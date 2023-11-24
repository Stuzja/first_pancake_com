import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_command.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState>
    with SideEffectBlocMixin<ForgotPasswordState, ForgotPasswordCommand> {
  ForgotPasswordBloc() : super(const _Initial()) {
    on<SendCode>(_onSendCode);
  }

  Future<void> _onSendCode(
    SendCode event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    try {
      // implement
    } catch (e) {
      produceSideEffect(const ForgotPasswordCommand.error());
    }
  }
}
