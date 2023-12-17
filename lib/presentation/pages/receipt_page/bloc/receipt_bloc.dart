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
  final ReceiptRepository _receiptRepository;

  ReceiptBloc(
    this._receiptRepository,
  ) : super(Initial()) {
    on<Started>(_onStarted);
    on<AddToFavorites>(_onAddToFavorites);
  }

  void _onStarted(
    Started event,
    Emitter<ReceiptState> emit,
  ) async {
    try {} catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }

  void _onAddToFavorites(
    AddToFavorites event,
    Emitter<ReceiptState> emit,
  ) async {
    try {
      emit(const ReceiptState.loading());
      await _receiptRepository.addToFavorites(event.receipt);
      produceSideEffect(const ReceiptCommand.favorite());
      emit(const ReceiptState.initial());
    } catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }
}
