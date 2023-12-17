part of 'search_recipe_bloc.dart';

@freezed
class SearchRecipeCommand with _$SearchRecipeCommand {
  const factory SearchRecipeCommand.error() = Error;
}
