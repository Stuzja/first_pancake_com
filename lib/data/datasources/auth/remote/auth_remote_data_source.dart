import 'package:first_pancake_com/data/models/auth/registration_dto.dart';

abstract class AuthRemoteDataSource {
   Future<RegistrationDto> registration(
    final RegistrationDto regDto,
  );
}
