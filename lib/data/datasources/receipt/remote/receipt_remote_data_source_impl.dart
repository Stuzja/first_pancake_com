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
  @POST('/receipt/favourite/{id}')
  Future<void> addToFavourites(
    @Path("id") recipeId,
    @Body() ReceiptDto receiptDto,
  );

  @override
  @GET('/receipts')
  Future<List<ReceiptDto>> getCurrentUserReceipts();

  @override
  @GET('/search/all')
  Future<List<ReceiptDto>> getAllReceipts();
}
