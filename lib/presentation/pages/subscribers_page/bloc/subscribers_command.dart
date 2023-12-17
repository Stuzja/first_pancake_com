part of 'subscribers_bloc.dart';

@freezed
class SubscribersCommand with _$SubscribersCommand {
  const factory SubscribersCommand.error() = Error;
}
