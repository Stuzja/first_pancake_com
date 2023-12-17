part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsCommand with _$SubscriptionsCommand {
  const factory SubscriptionsCommand.error() = Error;
}
