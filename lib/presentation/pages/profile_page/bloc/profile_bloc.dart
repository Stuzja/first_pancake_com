import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
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
  List<Receipt>? receipts;
  User? user;

  ProfileBloc(
    this._userRepository,
    this._receiptRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
    on<ClickedSubscribeButton>(_onClickedSubscribeButton);
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
          true,
          false,
          receipts!,
          subscribers.length,
          subscriptions.length,
          favourites.length,
        ));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error('Ошибка входа в профиль'));
      }
    } else {
      try {
        user = await _userRepository.getUserById(event.userId!);
        receipts = await _receiptRepository.getReceiptsById(event.userId!);

        final isSubscribed =
            await _userRepository.isUserSubscribed(event.userId!);

        final myUser = await _userRepository.getCurrentUser();

        emit(ProfileState.loaded(
          user!,
          myUser.id == user!.id,
          isSubscribed,
          receipts!,
          0,
          0,
          0,
        ));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error('Ошибка входа в профиль'));
      }
    }
  }

  void _onClickedSubscribeButton(
    ClickedSubscribeButton event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      final isSubscribed = (state as Loaded).isSubscribed;
      if (isSubscribed) {
        await _userRepository.unsubscribeUser(event.userId);
      } else {
        await _userRepository.subscribeUser(event.userId);
      }
      emit((state as Loaded).copyWith(isSubscribed: !isSubscribed));
    } catch (e) {
      produceSideEffect(const ProfileCommand.error(
          'Изменить подписку на профиль не удалось.'));
    }
  }
}
