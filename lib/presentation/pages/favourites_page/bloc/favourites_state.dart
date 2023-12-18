part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.initial() = Initial;
  const factory FavouritesState.loading() = Loading;
  const factory FavouritesState.loaded(
    List<Receipt> receipts,
  ) = Loaded;
}
