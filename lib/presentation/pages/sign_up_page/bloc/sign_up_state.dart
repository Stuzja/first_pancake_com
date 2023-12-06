part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    required String username,
    required String email,
    required String password,
    required String repassword,
  }) = _Initial;
}
