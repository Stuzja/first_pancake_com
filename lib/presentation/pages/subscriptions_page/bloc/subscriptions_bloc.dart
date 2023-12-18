import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'subscriptions_event.dart';
part 'subscriptions_state.dart';
part 'subscriptions_command.dart';
part 'subscriptions_bloc.freezed.dart';

@injectable
class SubscriptionsBloc extends Bloc<SubscriptionsEvent, SubscriptionsState>
    with SideEffectBlocMixin<SubscriptionsState, SubscriptionsCommand> {
  final UserRepository _userRepository;

  SubscriptionsBloc(
    this._userRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<SubscriptionsState> emit,
  ) async {
    try {
      emit(const SubscriptionsState.loading());
      final subscribers = await _userRepository.getSubscriptions();
      emit(SubscriptionsState.loaded(subscribers));
    } catch (e) {
      log('Error in subscriptions bloc: $e');
      emit(const SubscriptionsState.initial());
      produceSideEffect(const SubscriptionsCommand.error());
    }
  }
}
