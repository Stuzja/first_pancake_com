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
  SignUpBloc() : super(_Initial()) {
    on<SignUpEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
