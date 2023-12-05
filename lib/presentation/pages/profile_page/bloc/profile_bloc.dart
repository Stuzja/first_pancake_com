import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_command.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with SideEffectBlocMixin<ProfileState, ProfileCommand> {
  final UserRepository _userRepository;
  User? currentUser;

  ProfileBloc(this._userRepository) : super(Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      log('profile bloc enter');
      currentUser = await _userRepository.getCurrentUser();
      log('User received: $currentUser'); // Логгирование полученного пользователя
      emit(ProfileState.loaded(currentUser!));
    } catch (e) {
      log('Error in profile bloc: $e'); // Логгирование ошибки
      emit(const ProfileState.initial());
      produceSideEffect(const ProfileCommand.error());
    }
  }
}
