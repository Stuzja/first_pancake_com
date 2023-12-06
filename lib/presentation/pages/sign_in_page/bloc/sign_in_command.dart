part of 'sign_in_bloc.dart';

@freezed
class SignInCommand with _$SignInCommand {
  const factory SignInCommand.navToHomePage() = NavToHomePage;
  const factory SignInCommand.error() = Error;
  const factory SignInCommand.validator() = Validator;
}
