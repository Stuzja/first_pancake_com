import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
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
  final ReceiptRepository _receiptRepository;
  final AuthRepository _authRepository;
  List<Receipt>? receipts;
  User? user;

  ProfileBloc(
    this._userRepository,
    this._receiptRepository,
    this._authRepository,
  ) : super(Initial()) {
    on<Started>(_onStarted);
    on<SignOut>(_onSignOut);
  }

  void _onSignOut(
    SignOut event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      emit(const ProfileState.loading());
      await _authRepository.signOut();
      produceSideEffect(const ProfileCommand.navToSplash());
    } catch (e) {
      log('Error in profile bloc: $e');
      emit(const ProfileState.initial());
      produceSideEffect(const ProfileCommand.error());
    }
  }

  void _onStarted(
    Started event,
    Emitter<ProfileState> emit,
  ) async {
    if (event.userId == null) {
      try {
        user = await _userRepository.getCurrentUser();
        receipts = await _receiptRepository.getCurrentUserReceipts();
        final subscribers = await _userRepository.getSubscribers();
        final subscriptions = await _userRepository.getSubscriptions();
        final favourites = await _userRepository.getFavourites();
        emit(ProfileState.loaded(
          user!,
          receipts!,
          subscribers.length,
          subscriptions.length,
          favourites.length,
        ));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error());
      }
    } else {
      try {
        user = await _userRepository.getUserById(event.userId!);
        receipts = await _receiptRepository.getReceiptsById(event.userId!);
        emit(ProfileState.loaded(user!, receipts!, 0, 0, 0));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error());
      }
    }
  }
}
