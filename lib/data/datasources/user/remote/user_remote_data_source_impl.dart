import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/datasources/user/remote/user_remote_data_source.dart';
import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/data/models/user/user_dto.dart';
import 'package:first_pancake_com/data/models/user/user_numbers_data_dto.dart';
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

  @override
  @GET('/user/{id}')
  Future<UserDto> getUserById(
    @Path("id") userId,
  );

  @override
  @GET('/user/subscribers')
  Future<List<UserDto>> getSubscribers();

  @override
  @GET('/user/subscriptions')
  Future<List<UserDto>> getSubscriptions();

  @override
  @GET('/user/subscribed/{id}')
  Future<bool> isUserSubscribed(
    @Path("id") userId,
  );

  @override
  @POST('/user/subscribe/{id}')
  Future<void> subscribeUser(
    @Path("id") userId,
  );

  @override
  @DELETE('/user/unsubscribe/{id}')
  Future<void> unsubscribeUser(
    @Path("id") userId,
  );

  @override
  @GET('/user/info/:id')
  Future<UserNumbersDataDto> getDataUser(
    @Path("id") userId,
  );

  @override
  @GET('/receipts/favourite')
  Future<List<ReceiptDto>> getFavourites();

  @override
  @POST('/user/photo')
  Future<void> addProfileImage(
    @Body() String photo,
  );

  @override
  @DELETE('/user/photo')
  Future<void> deleteProfileImage();
}
