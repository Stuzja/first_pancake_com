import 'package:first_pancake_com/data/datasources/auth/local/auth_local_data_source.dart';
import 'package:first_pancake_com/data/datasources/auth/remote/auth_remote_data_source.dart';
import 'package:first_pancake_com/data/models/auth/login_dto.dart';
import 'package:first_pancake_com/data/models/auth/receipt_token_dto.dart';
import 'package:first_pancake_com/data/models/auth/registration_dto.dart';
import 'package:first_pancake_com/domain/entities/auth/login_model.dart';
import 'package:first_pancake_com/domain/entities/auth/receipt_token.dart';
import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  final UserRepository _userRep;

  AuthRepositoryImpl(
    this._authRemoteDataSource,
    this._authLocalDataSource,
    this._userRep,
  );

  @override
  String? getToken() {
    return _authLocalDataSource.getToken();
  }

  @override
  Future<bool> get isLoggedIn async {
    if (_authLocalDataSource.getToken() == null) {
      return false;
    }
    return true;
  }

  @override
  int get userId => _authLocalDataSource.getUserId();

  @override
  Future<void> signUp(RegistrationModel reg) async {
    ReceiptToken receiptToken = (await _authRemoteDataSource
            .registration(RegistrationMapper.fromModel(reg)))
        .toModel();
    await _authLocalDataSource.setUserInfo(
      userToken: receiptToken.token,
      userID: receiptToken.user_id,
    );
  }

  @override
  Future<void> signIn(LoginModel model) async {
    ReceiptToken receiptToken = (await _authRemoteDataSource.login(
            "application/json", LoginMapper.fromModel(model)))
        .toModel();
    await _authLocalDataSource.setUserInfo(
      userToken: receiptToken.token,
      userID: receiptToken.user_id,
    );
  }

  @override
  Future<void> signOut({bool signOutOnServer = true}) async {
    await _authLocalDataSource.signOut();
  }

  @override
  Future<void> refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }
}
