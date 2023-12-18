part of 'new_recipes_bloc.dart';

@freezed
class NewRecipesCommand with _$NewRecipesCommand {
  const factory NewRecipesCommand.error() = Error;
}