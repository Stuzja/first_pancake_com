part of 'enter_code_bloc.dart';

@freezed
class EnterCodeCommand with _$EnterCodeCommand {
  const factory EnterCodeCommand.navToNewPassword() = NavToNewPassword;
  const factory EnterCodeCommand.error() = Error;
}
