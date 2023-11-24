part of 'new_password_bloc.dart';

@freezed
class NewPasswordEvent with _$NewPasswordEvent {
  const factory NewPasswordEvent.started() = _Started;
}