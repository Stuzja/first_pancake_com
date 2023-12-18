part of 'subscribers_bloc.dart';

@freezed
class SubscribersState with _$SubscribersState {
  const factory SubscribersState.initial() = Initial;
  const factory SubscribersState.loading() = Loading;
  const factory SubscribersState.loaded(
    List<User> subscribers,
  ) = Loaded;
}
