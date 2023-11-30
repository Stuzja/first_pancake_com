// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../data/datasources/auth/local/auth_local_data_source.dart' as _i20;
import '../data/datasources/auth/remote/auth_remote_data_source.dart' as _i21;
import '../data/datasources/auth/remote/auth_remote_data_source_impl.dart'
    as _i22;
import '../data/datasources/user/remote/user_remote_data_source.dart' as _i18;
import '../data/datasources/user/remote/user_remote_data_source_impl.dart'
    as _i19;
import '../data/di/locator.dart' as _i30;
import '../data/interceptors/auth_interceptor.dart' as _i28;
import '../data/interceptors/dio_connectivity_request_retrier.dart' as _i6;
import '../data/interceptors/dio_interceptors_manager.dart' as _i29;
import '../data/repositories/auth/auth_repository_impl.dart' as _i26;
import '../data/repositories/snackbar_manager/snackbar_manager_impl.dart'
    as _i17;
import '../data/repositories/user/user_repository_impl.dart' as _i24;
import '../domain/repositories/auth/auth_repository.dart' as _i25;
import '../domain/repositories/snackbar_manager/snackbar_manager.dart' as _i16;
import '../domain/repositories/user/user_repository.dart' as _i23;
import '../presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart'
    as _i4;
import '../presentation/pages/enter_code_page/bloc/enter_code_bloc.dart' as _i7;
import '../presentation/pages/forgot_password_page/bloc/forgot_password_bloc.dart'
    as _i9;
import '../presentation/pages/new_password_page/bloc/new_password_bloc.dart'
    as _i10;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i12;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i14;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart' as _i15;
import '../presentation/pages/splash_page/bloc/splash_bloc.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.DioConnectivityRequestRetrier>(
      () => _i6.DioConnectivityRequestRetrier(
            dio: get<_i5.Dio>(),
            connectivity: get<_i3.Connectivity>(),
          ));
  gh.factory<_i7.EnterCodeBloc>(() => _i7.EnterCodeBloc());
  gh.factory<_i8.FlutterSecureStorage>(() => dataModule.storage);
  gh.factory<_i9.ForgotPasswordBloc>(() => _i9.ForgotPasswordBloc());
  gh.factory<_i10.NewPasswordBloc>(() => _i10.NewPasswordBloc());
  gh.factory<_i11.PrettyDioLogger>(() => dataModule.logger);
  gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc());
  await gh.factoryAsync<_i13.SharedPreferences>(
    () => dataModule.prefs,
    preResolve: true,
  );
  gh.factory<_i14.SignInBloc>(() => _i14.SignInBloc());
  gh.factory<_i15.SignUpBloc>(() => _i15.SignUpBloc());
  gh.singleton<_i16.SnackBarManager>(_i17.SnackBarManagerImpl());
  gh.singleton<_i18.UserRemoteDataSource>(
      _i19.UserRemoteDataSourceImpl(get<_i5.Dio>()));
  gh.factory<_i20.AuthLocalDataSource>(() => _i20.AuthLocalDataSource(
        get<_i13.SharedPreferences>(),
        get<_i8.FlutterSecureStorage>(),
      ));
  gh.singleton<_i21.AuthRemoteDataSource>(
      _i22.AuthDataSourceImpl(get<_i5.Dio>()));
  gh.singleton<_i23.UserRepository>(_i24.UserRepositoryImpl(
    get<_i20.AuthLocalDataSource>(),
    get<_i18.UserRemoteDataSource>(),
  ));
  gh.singleton<_i25.AuthRepository>(_i26.AuthRepositoryImpl(
    get<_i21.AuthRemoteDataSource>(),
    get<_i20.AuthLocalDataSource>(),
    get<_i23.UserRepository>(),
  ));
  gh.factory<_i27.SplashBloc>(
      () => _i27.SplashBloc(get<_i25.AuthRepository>()));
  gh.factory<_i28.AuthInterceptor>(() => _i28.AuthInterceptor(
        get<_i5.Dio>(),
        get<_i25.AuthRepository>(),
        get<_i16.SnackBarManager>(),
        get<_i6.DioConnectivityRequestRetrier>(),
      ));
  gh.singleton<_i29.DioInterceptorsManager>(_i29.DioInterceptorsManager(
    get<_i5.Dio>(),
    get<_i28.AuthInterceptor>(),
  ));
  return get;
}

class _$DataModule extends _i30.DataModule {}
