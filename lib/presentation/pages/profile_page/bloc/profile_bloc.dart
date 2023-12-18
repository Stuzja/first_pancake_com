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
  User? currentUser;

  ProfileBloc(
    this._userRepository,
    this._receiptRepository,
  ) : super(Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      currentUser = await _userRepository.getCurrentUser();
      receipts = await _receiptRepository.getCurrentUserReceipts();

      final subscribers = await _userRepository.getSubscribers();
      final subscriptions = await _userRepository.getSubscriptions();
      final favourites = await _userRepository.getFavourites();

      emit(ProfileState.loaded(
        currentUser!,
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
  }
}
