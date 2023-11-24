part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeCommand with _$CreateRecipeCommand {
  const factory CreateRecipeCommand.navToHomePage() = NavToHomePage;
  const factory CreateRecipeCommand.error() = Error;
}
