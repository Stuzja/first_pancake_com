part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({
    required String email,
    required String password,
  }) = _Initial;
}
