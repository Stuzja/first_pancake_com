import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'enter_code_event.dart';
part 'enter_code_state.dart';
part 'enter_code_command.dart';
part 'enter_code_bloc.freezed.dart';

@injectable
class EnterCodeBloc extends Bloc<EnterCodeEvent, EnterCodeState>
    with SideEffectBlocMixin<EnterCodeState, EnterCodeCommand> {
  EnterCodeBloc() : super(_Initial()) {
    on<EnterCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
