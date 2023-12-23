part of 'favourites_bloc.dart';

@freezed
class FavouritesCommand with _$FavouritesCommand {
  const factory FavouritesCommand.error() = Error;
}
