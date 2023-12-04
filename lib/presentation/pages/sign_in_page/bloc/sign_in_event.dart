part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = Started;
  const factory SignInEvent.signInClicked() = SignInClicked;
  const factory SignInEvent.changedPassword({required String password}) =
      ChangedPassword;
  const factory SignInEvent.changedEmail({required String email}) =
      ChangedEmail;
}
