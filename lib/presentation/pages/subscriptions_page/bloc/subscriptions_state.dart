part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsState with _$SubscriptionsState {
  const factory SubscriptionsState.initial() = Initial;
  const factory SubscriptionsState.loading() = Loading;
  const factory SubscriptionsState.loaded(
    List<User> subscriptions,
  ) = Loaded;
}
