import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    final responseCompleter = Completer<Response>();
    late StreamSubscription<ConnectivityResult> _connectivitySubscription;

    _connectivitySubscription = connectivity.onConnectivityChanged.listen(
          (connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: Options(
                    method: requestOptions.method,
                    headers: requestOptions.headers,
                  ),
            ),
          );
          _connectivitySubscription.cancel();
        }
      },
    );

    return responseCompleter.future;
  }
}