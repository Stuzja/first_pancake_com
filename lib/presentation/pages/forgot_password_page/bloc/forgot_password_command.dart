part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordCommand with _$ForgotPasswordCommand {
  const factory ForgotPasswordCommand.navToEnterCode() = NavToEnterCode;
}
