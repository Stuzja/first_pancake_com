part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.loaded(
    User currentUser,
    bool isMyProfile,
    bool isSubscribed,
    List<Receipt> receipts,
    int subscribersCount,
    int subscriptionsCount,
    int favouritesCount,
  ) = Loaded;
}
