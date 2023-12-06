import 'dart:developer';

import 'package:first_pancake_com/data/datasources/receipt/local/receipt_local_data_source.dart';
import 'package:first_pancake_com/data/datasources/receipt/remote/receipt_remote_data_source.dart';
import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ReceiptRepository)
class ReceiptRepositoryImpl extends ReceiptRepository {
  final ReceiptRemoteDataSource _receiptRemoteDataSource;
  final ReceiptLocalDataSource _receiptLocalDataSource;

  ReceiptRepositoryImpl(
    this._receiptRemoteDataSource,
    this._receiptLocalDataSource,
  );

  @override
  Future<void> addReceipt(Receipt receipt) async {
    await _receiptRemoteDataSource.addReceipt(ReceiptMapper.fromModel(receipt));
  }

  @override
  Future<List<Receipt>> getCurrentUserReceipts() async {
    final List<Receipt> models = [];
    final dtoList = await _receiptRemoteDataSource.getCurrentUserReceipts();
    log('dto list: ${dtoList.toString()}');
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
     log('models list: ${models.toString()}');
    return models;
  }

  @override
  Future<Receipt> getReceiptById() {
    // TODO: implement getReceiptById
    throw UnimplementedError();
  }
}
