import 'dart:developer';

import 'package:first_pancake_com/data/datasources/receipt/remote/receipt_remote_data_source.dart';
import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ReceiptRepository)
class ReceiptRepositoryImpl extends ReceiptRepository {
  final ReceiptRemoteDataSource _receiptRemoteDataSource;

  ReceiptRepositoryImpl(
    this._receiptRemoteDataSource,
  );

  @override
  Future<void> addReceipt(Receipt receipt) async {
    await _receiptRemoteDataSource.addReceipt(ReceiptMapper.fromModel(receipt));
  }

  @override
  Future<void> addToFavorites(int receiptId) async {
    await _receiptRemoteDataSource.addToFavourites(receiptId);
  }

  @override
  Future<void> deleteFromFavourites(int receiptId) async {
    await _receiptRemoteDataSource.deleteFromFavourites(receiptId);
  }

  @override
  Future<void> deleteReceipt(int receiptId) async {
    await _receiptRemoteDataSource.deleteReceipt(receiptId);
  }

  @override
  Future<List<Receipt>> getCurrentUserReceipts() async {
    final List<Receipt> models = [];
    final dtoList = await _receiptRemoteDataSource.getCurrentUserReceipts();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    return models;
  }

  @override
  Future<List<Receipt>> getReceiptsById(int userId) async {
    final List<Receipt> models = [];
    final dtoList = await _receiptRemoteDataSource.getReceiptsById(userId);
    log('dto list: ${dtoList.toString()}');
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    log('models list: ${models.toString()}');
    return models;
  }

  @override
  Future<Receipt> getReceiptById(int receiptId) async {
    return (await _receiptRemoteDataSource.receiptById(receiptId)).toModel();
  }

  @override
  Future<List<Receipt>> getAllReceipts() async {
    final List<Receipt> models = [];
    final dtoList = await _receiptRemoteDataSource.getAllReceipts();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    return models;
  }

   @override
  Future<List<Receipt>> getSubscriptionsReceipts() async {
    final List<Receipt> models = [];
    final dtoList = await _receiptRemoteDataSource.getSubscriptionsReceipts();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    log(models.length.toString());
    return models;
  }
}
