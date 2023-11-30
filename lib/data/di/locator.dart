
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

const int timeOutInSec = 30;
const int _millisecondsInSec = 1000;

@module
abstract class DataModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  FlutterSecureStorage get storage => const FlutterSecureStorage();
  PrettyDioLogger get logger => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      );

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://first-pancake-com.onrender.com/",
          connectTimeout: timeOutInSec * _millisecondsInSec,
          receiveTimeout: timeOutInSec * _millisecondsInSec,
        ),
      );

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
