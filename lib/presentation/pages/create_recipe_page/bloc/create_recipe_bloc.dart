import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_command.dart';
part 'create_recipe_bloc.freezed.dart';

@injectable
class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState>
    with SideEffectBlocMixin<CreateRecipeState, CreateRecipeCommand> {
  CreateRecipeBloc() : super(_Initial()) {
    on<CreateRecipeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
