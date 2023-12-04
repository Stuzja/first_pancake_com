import 'package:first_pancake_com/data/models/auth/login_dto.dart';
import 'package:first_pancake_com/data/models/auth/registration_dto.dart';

abstract class AuthRemoteDataSource {
  Future<RegistrationDto> registration(
    final RegistrationDto regDto,
  );
  Future<LoginDto> login(
    final LoginDto loginDto,
  );
}
