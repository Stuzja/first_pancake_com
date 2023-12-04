import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/datasources/auth/remote/auth_remote_data_source.dart';
import 'package:first_pancake_com/data/models/auth/login_dto.dart';
import 'package:first_pancake_com/data/models/auth/registration_dto.dart';
import 'package:first_pancake_com/data/models/auth/token_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_remote_data_source_impl.g.dart';

@RestApi()
@Singleton(as: AuthRemoteDataSource)
abstract class AuthDataSourceImpl implements AuthRemoteDataSource {
  @factoryMethod
  factory AuthDataSourceImpl(Dio dio) = _AuthDataSourceImpl;

  
  @override
  @POST('/registration')
  Future<TokenDto> registration(
    @Body() RegistrationDto regDto,
  );

  @override
  @GET('/login')
  Future<TokenDto> login(
    @Body() LoginDto loginDto,
  );
}
