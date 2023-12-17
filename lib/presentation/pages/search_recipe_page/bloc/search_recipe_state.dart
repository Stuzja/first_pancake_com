part of 'search_recipe_bloc.dart';

@freezed
class SearchRecipeState with _$SearchRecipeState {
  const factory SearchRecipeState.initial() = Initial;
  const factory SearchRecipeState.loading() = Loading;
  const factory SearchRecipeState.loaded(
    List<Receipt> receipts,
  ) = Loaded;
}
