import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_command.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with SideEffectBlocMixin<SignUpState, SignUpCommand> {
  SignUpBloc() : super(const SignUpState.initial()) {
    on<Started>(_onStarted);
    on<SignUpClicked>(_onSignUpClicked);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const SignUpCommand.error());
    }
  }

  Future<void> _onSignUpClicked(
    SignUpClicked event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const SignUpCommand.error());
    }
  }
}
