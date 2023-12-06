import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/utils/validators.dart';
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
  final AuthRepository authRepository;
  SignUpBloc(
    this.authRepository,
  ) : super(const SignUpState.initial(
          username: '',
          email: '',
          password: '',
          repassword: '',
        )) {
    on<Started>(_onStarted);
    on<ChangedEmail>(_onChangedEmail);
    on<ChangedUsername>(_onChangedUsername);
    on<ChangedPassword>(_onChangedPassword);
    on<ChangedRepassword>(_onChangedRepassword);
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

  void _onChangedEmail(
    ChangedEmail event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  void _onChangedPassword(
    ChangedPassword event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  void _onChangedRepassword(
    ChangedRepassword event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(repassword: event.repassword));
  }

  void _onChangedUsername(
    ChangedUsername event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(username: event.username));
  }

  Future<void> _onSignUpClicked(
    SignUpClicked event,
    Emitter<SignUpState> emit,
  ) async {
    if (state.password == state.repassword &&
        Validators.validateEmail(state.email) == null &&
        state.email != '') {
      try {
        await authRepository.signUp(
          RegistrationModel(
            email: state.email,
            username: state.username,
            password: state.password,
          ),
        );
        produceSideEffect(const SignUpCommand.navToHomePage());
      } catch (e) {
        produceSideEffect(const SignUpCommand.error());
      }
    }
    else{
       produceSideEffect(const SignUpCommand.validator());
    }
  }
}
