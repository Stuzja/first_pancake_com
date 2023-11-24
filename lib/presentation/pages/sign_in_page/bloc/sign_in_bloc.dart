import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_command.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with SideEffectBlocMixin<SignInState, SignInCommand> {
  SignInBloc() : super(const SignInState.initial()) {
    on<Started>(_onStarted);
    on<SignInClicked>(_onSignInClicked);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<SignInState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const SignInCommand.error());
    }
  }

  Future<void> _onSignInClicked(
    SignInClicked event,
    Emitter<SignInState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const SignInCommand.error());
    }
  }
}
