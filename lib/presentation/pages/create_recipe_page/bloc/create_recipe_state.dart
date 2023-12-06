part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState.initial() = Initial;
  const factory CreateRecipeState.loading() = Loading;
  const factory CreateRecipeState.loaded() = Loaded;
}
