import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:first_pancake_com/presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart';
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
  final UserRepository _userRepository;

  ReceiptBloc(
    this._receiptRepository,
    this._userRepository,
  ) : super(Initial()) {
    on<Started>(_onStarted);
    on<AddToFavorites>(_onAddToFavorites);
    on<DeleteFromFavorites>(_onDeleteFromFavorites);
    on<DeleteReceipt>(_onDeleteReceipt);
  }

  void _onStarted(
    Started event,
    Emitter<ReceiptState> emit,
  ) async {
    try {
      emit(const ReceiptState.loading());
      final favourites = await _userRepository.getFavourites();
      log(favourites.toString());
      List<int?> recipeIds = favourites.map((recipe) => recipe.id).toList();
      final receipt = await _receiptRepository.getReceiptById(event.receiptId);

      final user = await _userRepository.getCurrentUser();
      final isMine = receipt.user_id == user.id;
      if (recipeIds.contains(event.receiptId)) {
        emit(ReceiptState.loaded(
          receipt: receipt,
          isFavourite: true,
          isMine: isMine,
        ));
      } else {
        emit(ReceiptState.loaded(
          receipt: receipt,
          isFavourite: false,
          isMine: isMine,
        ));
      }
    } catch (e) {
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
      await _receiptRepository.addToFavorites(event.receiptId);
      final receipt = await _receiptRepository.getReceiptById(event.receiptId);
      produceSideEffect(const ReceiptCommand.favorite());
      final user = await _userRepository.getCurrentUser();
      final isMine = receipt.user_id == user.id;
      emit(ReceiptState.loaded(
        receipt: receipt,
        isFavourite: true,
        isMine: isMine,
      ));
    } catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }

  void _onDeleteFromFavorites(
    DeleteFromFavorites event,
    Emitter<ReceiptState> emit,
  ) async {
    try {
      log('ENTER DELETE');
      emit(const ReceiptState.loading());
      await _receiptRepository.deleteFromFavourites(event.receiptId);
      final receipt = await _receiptRepository.getReceiptById(event.receiptId);
      produceSideEffect(const ReceiptCommand.notFavorite());
      final user = await _userRepository.getCurrentUser();
      final isMine = receipt.user_id == user.id;
      emit(ReceiptState.loaded(
        receipt: receipt,
        isFavourite: false,
        isMine: isMine,
      ));
    } catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }

  void _onDeleteReceipt(
    DeleteReceipt event,
    Emitter<ReceiptState> emit,
  ) async {
    try {
      emit(const ReceiptState.loading());
      await _receiptRepository.deleteReceipt(event.receiptId);
      produceSideEffect(const ReceiptCommand.deleted());
    } catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }
}
