import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/domain/repositories/receipt/receipt_repository.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_command.dart';
part 'create_recipe_bloc.freezed.dart';

@injectable
class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState>
    with SideEffectBlocMixin<CreateRecipeState, CreateRecipeCommand> {
  final ReceiptRepository _receiptRepository;
  final AuthRepository _authRepository;
  final SharedPreferences _prefs;

  CreateRecipeBloc(
    this._receiptRepository,
    this._authRepository,
    this._prefs,
  ) : super(Initial()) {
    on<CreateRecipe>(_onCreateRecipe);
  }

  Future<void> _onCreateRecipe(
      CreateRecipe event, Emitter<CreateRecipeState> emit) async {
    emit(const CreateRecipeState.loading());
    try {
      final token = _prefs.get('Token');
      final userId = _prefs.get('UserId');

      log('current token: $token, current userId: $userId');

      final receipt = event.receipt;

      await _receiptRepository.addReceipt(receipt);
      emit(const CreateRecipeState.loaded());
      log('from bloc: receipt is added');

      produceSideEffect(const CreateRecipeCommand.navToHomePage());
    } catch (e) {
      emit(const CreateRecipeState.initial());
      produceSideEffect(const CreateRecipeCommand.error());
    }
  }
}
