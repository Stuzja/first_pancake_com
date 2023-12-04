part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = Started;
  const factory SignUpEvent.changedUsername({required String username}) =
      ChangedUsername;
  const factory SignUpEvent.changedPassword({required String password}) =
      ChangedPassword;
  const factory SignUpEvent.changedRepassword({required String repassword}) =
      ChangedRepassword;
  const factory SignUpEvent.changedEmail({required String email}) =
      ChangedEmail;
  const factory SignUpEvent.signUpClicked() = SignUpClicked;
}
