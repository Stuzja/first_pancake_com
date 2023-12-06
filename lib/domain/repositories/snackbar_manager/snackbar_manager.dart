import 'dart:async';

import 'package:first_pancake_com/domain/entities/errors/network_error.dart';

abstract class SnackBarManager {
  final StreamController<NetworkError> controller = StreamController();
  void addNewError({required NetworkError error});
}
