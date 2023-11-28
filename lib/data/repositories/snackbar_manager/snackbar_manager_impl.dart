import 'package:first_pancake_com/domain/entities/errors/network_error.dart';
import 'package:first_pancake_com/domain/repositories/snackbar_manager/snackbar_manager.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: SnackBarManager)
class SnackBarManagerImpl extends SnackBarManager {
  @override
  void addNewError({required NetworkError error}) {
    controller.add(error);
  }
}
