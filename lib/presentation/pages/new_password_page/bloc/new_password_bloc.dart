import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'new_password_event.dart';
part 'new_password_state.dart';
part 'new_password_command.dart';
part 'new_password_bloc.freezed.dart';

@injectable
class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState>
    with SideEffectBlocMixin<NewPasswordState, NewPasswordCommand> {
  NewPasswordBloc() : super(const _Initial()) {
    on<Register>(_onRegister);
  }

  Future<void> _onRegister(
    Register event,
    Emitter<NewPasswordState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const NewPasswordCommand.error());
    }
  }
}
