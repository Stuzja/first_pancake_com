part of 'profile_bloc.dart';

@freezed
class ProfileCommand with _$ProfileCommand {
  const factory ProfileCommand.navToSubscribers() = NavToSubscribers;
  const factory ProfileCommand.navToSubscriptions() = NavToSubscriptions;
  const factory ProfileCommand.navToEditProfile() = NavToEditProfile;
  const factory ProfileCommand.navToFavourites() = NavToFavourites;
  const factory ProfileCommand.navToSplash() = NavToSplash;
  const factory ProfileCommand.error() = Error;
}
