import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'new_recipes_event.dart';
part 'new_recipes_state.dart';
part 'new_recipes_command.dart';
part 'new_recipes_bloc.freezed.dart';

@injectable
class NewRecipesBloc extends Bloc<NewRecipesEvent, NewRecipesState>
 with SideEffectBlocMixin<NewRecipesState, NewRecipesCommand> {
  NewRecipesBloc() : super(_Initial()) {
    on<NewRecipesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
