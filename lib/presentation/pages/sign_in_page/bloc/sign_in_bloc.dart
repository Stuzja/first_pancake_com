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
  SignInBloc() : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
