import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/auth/login_model.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/utils/validators.dart';
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
  final AuthRepository authRepository;
  SignInBloc(this.authRepository)
      : super(const SignInState.initial(
          email: '',
          password: '',
        )) {
    on<Started>(_onStarted);
    on<ChangedEmail>(_onChangedEmail);
    on<ChangedPassword>(_onChangedPassword);
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

  void _onChangedEmail(
    ChangedEmail event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  void _onChangedPassword(
    ChangedPassword event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSignInClicked(
    SignInClicked event,
    Emitter<SignInState> emit,
  ) async {
    if (Validators.validateEmail(state.email) == null && state.email != '') {
      try {
        await authRepository.signIn(
          LoginModel(
            email: state.email,
            password: state.password,
          ),
        );
        produceSideEffect(const SignInCommand.navToHomePage());
      } catch (e) {
        produceSideEffect(const SignInCommand.error());
      }
    } else {
      produceSideEffect(const SignInCommand.validator());
    }
  }
}
