import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

const String tokenKey = "AccessToken";
const String userKey = "UserId";

@injectable
class AuthLocalDataSource {
  final SharedPreferences _prefs;
  final FlutterSecureStorage _storage;
  AuthLocalDataSource(this._prefs, this._storage);

  Future<void> clearAuthCreds() async {
    await _prefs.remove(tokenKey);
    await _prefs.remove(userKey);
  }

  String? getToken() {
    return _prefs.getString(tokenKey);
  }

  int getUserId() {
    return _prefs.getInt(userKey) ?? -1;
  }

  Future<void> setUserInfo({
    required String userToken,
    required int userID,
  }) async {
    await _prefs.setString(tokenKey, userToken);
    await _prefs.setInt(userKey, userID);
  }
}
