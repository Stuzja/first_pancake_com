part of 'subscribers_bloc.dart';

@freezed
class SubscribersEvent with _$SubscribersEvent {
  const factory SubscribersEvent.started() = Started;
}