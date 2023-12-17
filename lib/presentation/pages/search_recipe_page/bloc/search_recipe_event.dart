part of 'search_recipe_bloc.dart';

@freezed
class SearchRecipeEvent with _$SearchRecipeEvent {
  const factory SearchRecipeEvent.started() = Started;
  const factory SearchRecipeEvent.textChanged({
    required String text,
  }) = TextChanged;
}
