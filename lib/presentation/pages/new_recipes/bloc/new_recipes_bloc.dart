import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'new_recipes_event.dart';
part 'new_recipes_state.dart';
part 'new_recipes_command.dart';
part 'new_recipes_bloc.freezed.dart';

@injectable
class NewRecipesBloc extends Bloc<NewRecipesEvent, NewRecipesState>
    with SideEffectBlocMixin<NewRecipesState, NewRecipesCommand> {
  final ReceiptRepository receiptRepository;
  List<Receipt>? receipts;

  NewRecipesBloc(this.receiptRepository) : super(Loading()) {
    on<Started>(_onStarted);
  }

  void _onStarted(
    Started event,
    Emitter<NewRecipesState> emit,
  ) async {
    try {
      receipts = await receiptRepository.getSubscriptionsReceipts();
      emit(Loaded(receipts!));
    } catch (e) {
      produceSideEffect(const NewRecipesCommand.error());
    }
  }
}
