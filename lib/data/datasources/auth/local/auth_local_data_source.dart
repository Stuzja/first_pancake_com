import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

const String refreshTokenKey = "RefreshToken";
const String accessTokenKey = "AccessToken";
const String userKey = "UserId";
const String userTypeKey = "UserType";

@injectable
class AuthLocalDataSource {
  final SharedPreferences _prefs;
  final FlutterSecureStorage _storage;
  AuthLocalDataSource(this._prefs, this._storage);

  Future<void> clearAuthCreds() async {
    await setRefreshToken(null);
    await _prefs.remove(accessTokenKey);
    await _prefs.remove(userTypeKey);
    await _prefs.remove(userKey);
  }

  String? getAccessToken() {
    debugPrint('Access token: ' + _prefs.getString(accessTokenKey).toString());
    return _prefs.getString(accessTokenKey);
  }

  Future<void> setUserInfo(
      {required String userRefreshToken,
      required String userAccessToken,
      required int userID,
      required String userType}) async {
    await setRefreshToken(userRefreshToken);
    await _prefs.setString(accessTokenKey, userAccessToken);
    await _prefs.setString(userTypeKey, userType);
    await _prefs.setInt(userKey, userID);
  }

  int getUserId() {
    return _prefs.getInt(userKey)??-1;
  }

  String getUserType() {
    return _prefs.getString(userTypeKey) ?? '';
  }

  Future<void> setRefreshToken(String? token) async {
    await _storage.write(key: refreshTokenKey, value: token);
  }

  Future<String> getRefreshToken() async {
    var res = await _storage.read(key: refreshTokenKey);
    return res ?? '';
  }
}
