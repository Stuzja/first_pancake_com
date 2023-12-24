part of 'profile_bloc.dart';

@freezed
class ProfileCommand with _$ProfileCommand {
  const factory ProfileCommand.navToSubscribers() = NavToSubscribers;
  const factory ProfileCommand.navToSubscriptions() = NavToSubscriptions;
  const factory ProfileCommand.navToEditProfile() = NavToEditProfile;
  const factory ProfileCommand.navToFavourites() = NavToFavourites;
  const factory ProfileCommand.error(final String textError) = Error;
  const factory ProfileCommand.navToSplash() = NavToSplash;
  const factory ProfileCommand.add() = Add;
  const factory ProfileCommand.delete() = Delete;
}
