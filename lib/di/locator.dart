import 'package:first_pancake_com/di/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  $initGetIt(getIt);
}
