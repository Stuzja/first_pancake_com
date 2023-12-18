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
  ) : super(Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<ProfileState> emit,
  ) async {
    if (event.userId == null) {
      try {
        user = await _userRepository.getCurrentUser();
        receipts = await _receiptRepository.getCurrentUserReceipts();
        log('receipts: ${receipts.toString()}');
        emit(ProfileState.loaded(user!, receipts!));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error());
      }
    }
    else{
      try {
        log(event.userId!.toString());
        user = await _userRepository.getUserById(event.userId!);
        receipts = await _receiptRepository.getReceiptsById(event.userId!);
        log('receipts: ${receipts.toString()}');
        emit(ProfileState.loaded(user!, receipts!));
      } catch (e) {
        log('Error in profile bloc: $e');
        emit(const ProfileState.initial());
        produceSideEffect(const ProfileCommand.error());
      }
    }
  }
}
