import 'package:first_pancake_com/data/models/auth/login_dto.dart';
import 'package:first_pancake_com/data/models/auth/receipt_token_dto.dart';
import 'package:first_pancake_com/data/models/auth/registration_dto.dart';

abstract class AuthRemoteDataSource {
  Future<ReceiptTokenDto> registration(
    final RegistrationDto regDto,
  );
  
  Future<ReceiptTokenDto> login(
    final String content_type,
    final LoginDto loginDto,
  );
}
