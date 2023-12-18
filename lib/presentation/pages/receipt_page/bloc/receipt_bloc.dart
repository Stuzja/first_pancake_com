import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'receipt_event.dart';
part 'receipt_state.dart';
part 'receipt_command.dart';
part 'receipt_bloc.freezed.dart';

@injectable
class ReceiptBloc extends Bloc<ReceiptEvent, ReceiptState>
    with SideEffectBlocMixin<ReceiptState, ReceiptCommand> {
  final ReceiptRepository receiptRepository;
  ReceiptBloc(this.receiptRepository) : super(Loading()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<ReceiptState> emit,
  ) async {
    try {
      emit(const ReceiptState.loading());
      final receipt = await receiptRepository.getReceiptById(event.receiptId);
      emit(ReceiptState.loaded(receipt));
    } catch (e) {
      log('Error in search recipe bloc: $e');
      produceSideEffect(const ReceiptCommand.error());
    }
  }
}
