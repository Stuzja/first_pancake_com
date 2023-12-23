part of 'new_recipes_bloc.dart';

@freezed
class NewRecipesState with _$NewRecipesState {
  const factory NewRecipesState.loading() = Loading;
  const factory NewRecipesState.loaded(List<Receipt> recipes) = Loaded;
}
