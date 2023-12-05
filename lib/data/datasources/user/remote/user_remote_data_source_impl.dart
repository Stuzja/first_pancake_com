import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/datasources/user/remote/user_remote_data_source.dart';
import 'package:first_pancake_com/data/models/user/user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'user_remote_data_source_impl.g.dart';

@RestApi()
@Singleton(as: UserRemoteDataSource)
abstract class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @factoryMethod
  factory UserRemoteDataSourceImpl(Dio dio) = _UserRemoteDataSourceImpl;

  @override
  @GET('/user')
  Future<UserDto> getCurrentUser();
}
