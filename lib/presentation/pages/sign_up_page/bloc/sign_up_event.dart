part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = Started;
  const factory SignUpEvent.signUpClicked({
    required String name,
    required String email,
    required String password,
    required String photo,
  }) = SignUpClicked;
}
