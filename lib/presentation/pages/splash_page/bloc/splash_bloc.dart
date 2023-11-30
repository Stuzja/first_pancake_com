import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_command.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState>
    with SideEffectBlocMixin<SplashState, SplashCommand> {
  final AuthRepository authRepository;
  SplashBloc(
    this.authRepository,
  ) : super(const _Initial()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<SplashState> emit,
  ) async {
    if (getIt.currentScopeName == 'auth') {
      await getIt.popScope();
    }
    getIt.pushNewScope(scopeName: 'auth');

    await authRepository.registration(
      RegistrationModel(
        email: "email",
        username: "username",
        password: "password",
      ),
    );
    emit(state);
  }
}
