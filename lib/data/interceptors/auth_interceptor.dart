import 'dart:io';

import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/interceptors/dio_connectivity_request_retrier.dart';
import 'package:first_pancake_com/data/models/errors/network_error_dto.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/domain/repositories/snackbar_manager/snackbar_manager.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final AuthRepository _authRepository;
  final SnackBarManager _snackBarManager;
  final Dio _dio;
  final DioConnectivityRequestRetrier _requestRetrier;

  AuthInterceptor(
    this._dio,
    this._authRepository,
    this._snackBarManager,
      this._requestRetrier,
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = _authRepository.getAccessToken();
    // if (token != null) {
    //   options.headers["Authorization"] = "Bearer $token ";
    // }
    // super.onRequest(options, handler);
  }

  final socketError = const NetworkErrorDto(
    statusCode: 500,
    title: "Нет Сигнала",
  );
  final badConnection = const NetworkErrorDto(
    statusCode: 501,
    title: "Плохое подключение к интернету",
  );

  bool _isServerDown(DioError error) {
    return (error.error is SocketException) ||
        (error.type == DioErrorType.other);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_isServerDown(err)) {
      _snackBarManager.addNewError(error: socketError.toModel());
      // повторяем изначальный запрос
      final retry = await _requestRetrier.scheduleRequestRetry(err.requestOptions);

      return handler.resolve(retry);
    }
    if (err.type == DioErrorType.connectTimeout) {
      _snackBarManager.addNewError(error: badConnection.toModel());
    }

    if (err.response != null &&
        err.response!.statusCode != 401 &&
        err.response!.statusCode != 403) {
      final networkError = NetworkErrorDto.fromJson(err.response!.data);
      _snackBarManager.addNewError(error: networkError.toModel());
    }
    // проверяем, что ошибка запроса связана с токеном
    if (err.response != null && err.response!.statusCode == 401) {
      // обновляем accessToken с помощью refreshToken
      try {
        await _authRepository.refresh();
      } catch (e) {
        await _authRepository.signOut(signOutOnServer: false);
        getIt<AutoRouter>().pushAndPopUntil(
          const SplashRoute(),
          predicate: (_) => false,
        );
        return handler.next(err);
      }

      // повторяем изначальный запрос
      final retry = await _dio.request(
        err.requestOptions.path,
        cancelToken: err.requestOptions.cancelToken,
        data: err.requestOptions.data,
        onReceiveProgress: err.requestOptions.onReceiveProgress,
        onSendProgress: err.requestOptions.onSendProgress,
        queryParameters: err.requestOptions.queryParameters,
        options: Options(
          method: err.requestOptions.method,
          headers: err.requestOptions.headers,
        ),
      );

      return handler.resolve(retry);
    }
    return super.onError(err, handler);
  }
}
