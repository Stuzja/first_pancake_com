import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/interceptors/auth_interceptor.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@singleton
class DioInterceptorsManager {
  final AuthInterceptor _authInterceptor;

  DioInterceptorsManager(Dio dio, this._authInterceptor) {
    dio.interceptors
      ..add(getIt<PrettyDioLogger>())
      ..add(_authInterceptor);
  }
}
