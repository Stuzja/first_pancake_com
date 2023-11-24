part of 'enter_code_bloc.dart';

@freezed
class EnterCodeEvent with _$EnterCodeEvent {
  const factory EnterCodeEvent.confirmEmail({
    required String code,
  }) = ConfirmEmail;
}