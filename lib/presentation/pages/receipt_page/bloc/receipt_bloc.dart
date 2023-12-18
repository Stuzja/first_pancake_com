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
      if (recipeIds.contains(event.receipt.id!)) {
        emit(const ReceiptState.loaded(isFavourite: true));
      } else {
        emit(const ReceiptState.loaded(isFavourite: false));
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
      await _receiptRepository.addToFavorites(event.receipt);
      produceSideEffect(const ReceiptCommand.favorite());
      emit(const ReceiptState.loaded(isFavourite: true));
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
      await _receiptRepository.deleteFromFavourites(event.receipt);
      produceSideEffect(const ReceiptCommand.notFavorite());
      emit(const ReceiptState.loaded(isFavourite: false));
    } catch (e) {
      log('Error in receipt bloc: $e');
      emit(const ReceiptState.initial());
      produceSideEffect(const ReceiptCommand.error());
    }
  }
}
