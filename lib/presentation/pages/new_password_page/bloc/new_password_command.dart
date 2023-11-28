part of 'new_password_bloc.dart';

@freezed
class NewPasswordCommand with _$NewPasswordCommand {
  const factory NewPasswordCommand.navToSignIn() = NavToSignIn;
  const factory NewPasswordCommand.error() = Error;
}
