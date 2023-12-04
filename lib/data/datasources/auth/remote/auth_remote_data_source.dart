import 'package:first_pancake_com/data/models/auth/login_dto.dart';
import 'package:first_pancake_com/data/models/auth/registration_dto.dart';
import 'package:first_pancake_com/data/models/auth/token_dto.dart';

abstract class AuthRemoteDataSource {
  Future<TokenDto> registration(
    final RegistrationDto regDto,
  );
  Future<TokenDto> login(
    final LoginDto loginDto,
  );
}
