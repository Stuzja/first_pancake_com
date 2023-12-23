import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_command.dart';
part 'favourites_bloc.freezed.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState>
    with SideEffectBlocMixin<FavouritesState, FavouritesCommand> {
  final UserRepository _userRepository;

  FavouritesBloc(
    this._userRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<FavouritesState> emit,
  ) async {
    try {
      emit(const FavouritesState.loading());
      final receipts = await _userRepository.getFavourites();
      emit(FavouritesState.loaded(receipts));
    } catch (e) {
      log('Error in favourites bloc: $e');
      emit(const FavouritesState.initial());
      produceSideEffect(const FavouritesCommand.error());
    }
  }
}
