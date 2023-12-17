import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'search_recipe_event.dart';
part 'search_recipe_state.dart';
part 'search_recipe_command.dart';
part 'search_recipe_bloc.freezed.dart';

@injectable
class SearchRecipeBloc extends Bloc<SearchRecipeEvent, SearchRecipeState>
    with SideEffectBlocMixin<SearchRecipeState, SearchRecipeCommand> {
  final ReceiptRepository _receiptRepository;

  SearchRecipeBloc(
    this._receiptRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
    on<TextChanged>(_onTextChanged);
  }

  void _onStarted(
    Started event,
    Emitter<SearchRecipeState> emit,
  ) async {
    try {
      emit(const SearchRecipeState.loading());
      final receipts = await _receiptRepository.getAllReceipts();
      emit(SearchRecipeState.loaded(
        receipts,
        '',
      ));
    } catch (e) {
      log('Error in search recipe bloc: $e');
      emit(const SearchRecipeState.initial());
      produceSideEffect(const SearchRecipeCommand.error());
    }
  }

  void _onTextChanged(
    TextChanged event,
    Emitter<SearchRecipeState> emit,
  ) async {
    if (state is Loaded) {
      emit((state as Loaded).copyWith(
        text: event.text,
      ));
    }
  }
}
