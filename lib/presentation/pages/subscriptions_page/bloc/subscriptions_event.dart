part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsEvent with _$SubscriptionsEvent {
  const factory SubscriptionsEvent.started() = Started;
}