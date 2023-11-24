part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeEvent with _$CreateRecipeEvent {
  const factory CreateRecipeEvent.started() = _Started;
}