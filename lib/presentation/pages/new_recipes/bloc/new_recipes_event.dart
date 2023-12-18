part of 'new_recipes_bloc.dart';

@freezed
class NewRecipesEvent with _$NewRecipesEvent {
  const factory NewRecipesEvent.started() = Started;
}