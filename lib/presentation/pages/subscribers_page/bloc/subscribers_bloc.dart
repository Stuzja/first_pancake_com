import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'subscribers_event.dart';
part 'subscribers_state.dart';
part 'subscribers_command.dart';
part 'subscribers_bloc.freezed.dart';

@injectable
class SubscribersBloc extends Bloc<SubscribersEvent, SubscribersState>
    with SideEffectBlocMixin<SubscribersState, SubscribersCommand> {
  final UserRepository _userRepository;

  SubscribersBloc(
    this._userRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<SubscribersState> emit,
  ) async {
    try {
      emit(const SubscribersState.loading());
      final subscribers = await _userRepository.getSubscribers();
      emit(SubscribersState.loaded(subscribers));
    } catch (e) {
      log('Error in subscribers bloc: $e');
      emit(const SubscribersState.initial());
      produceSideEffect(const SubscribersCommand.error());
    }
  }
}
