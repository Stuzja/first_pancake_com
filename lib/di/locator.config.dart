// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../data/di/locator.dart' as _i15;
import '../presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart'
    as _i4;
import '../presentation/pages/enter_code_page/bloc/enter_code_bloc.dart' as _i6;
import '../presentation/pages/forgot_password_page/bloc/forgot_password_bloc.dart'
    as _i8;
import '../presentation/pages/new_password_page/bloc/new_password_bloc.dart'
    as _i9;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i11;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i13;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  gh.lazySingleton<_i3.Connectivity>(() => dataModule.connectivity);
  gh.factory<_i4.CreateRecipeBloc>(() => _i4.CreateRecipeBloc());
  gh.lazySingleton<_i5.Dio>(() => dataModule.dio);
  gh.factory<_i6.EnterCodeBloc>(() => _i6.EnterCodeBloc());
  gh.factory<_i7.FlutterSecureStorage>(() => dataModule.storage);
  gh.factory<_i8.ForgotPasswordBloc>(() => _i8.ForgotPasswordBloc());
  gh.factory<_i9.NewPasswordBloc>(() => _i9.NewPasswordBloc());
  gh.factory<_i10.PrettyDioLogger>(() => dataModule.logger);
  gh.factory<_i11.ProfileBloc>(() => _i11.ProfileBloc());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => dataModule.prefs,
    preResolve: true,
  );
  gh.factory<_i13.SignInBloc>(() => _i13.SignInBloc());
  gh.factory<_i14.SignUpBloc>(() => _i14.SignUpBloc());
  return get;
}

class _$DataModule extends _i15.DataModule {}
