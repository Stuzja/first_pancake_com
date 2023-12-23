import 'package:dio/dio.dart';
import 'package:first_pancake_com/data/datasources/receipt/remote/receipt_remote_data_source.dart';
import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'receipt_remote_data_source_impl.g.dart';

@RestApi()
@Singleton(as: ReceiptRemoteDataSource)
abstract class ReceiptDataSourceImpl implements ReceiptRemoteDataSource {
  @factoryMethod
  factory ReceiptDataSourceImpl(Dio dio) = _ReceiptDataSourceImpl;

  @override
  @POST('/receipt')
  Future<void> addReceipt(
    @Body() ReceiptDto receiptDto,
  );

  @override
  @GET('/receipts/favourite/{id}')
  Future<void> addToFavourites(
    @Path("id") recipeId,
  );

  @override
  @DELETE('/receipts/favourite/{id}')
  Future<void> deleteFromFavourites(
   @Path("id") recipeId,
  );

  @override
  @DELETE('/receipt/{id}')
  Future<void> deleteReceipt(
   @Path("id") recipeId,
  );  

  @override
  @GET('/receipts')
  Future<List<ReceiptDto>> getCurrentUserReceipts();

  @override
  @GET('/receipts/{id}')
  Future<List<ReceiptDto>> getReceiptsById(
    @Path("id") userId,
  );

  @override
  @GET('/receipt/{id}')
  Future<ReceiptDto> receiptById(
    @Path("id") receiptId,
  );

  @override
  @GET('/search/all')
  Future<List<ReceiptDto>> getAllReceipts();
}
