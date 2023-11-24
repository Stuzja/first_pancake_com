part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.sendCode({
    required String email,
  }) = SendCode;
}
