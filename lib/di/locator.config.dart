// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../data/datasources/auth/local/auth_local_data_source.dart' as _i23;
import '../data/datasources/auth/remote/auth_remote_data_source.dart' as _i24;
import '../data/datasources/auth/remote/auth_remote_data_source_impl.dart'
    as _i25;
import '../data/datasources/receipt/local/receipt_local_data_source.dart'
    as _i12;
import '../data/datasources/receipt/remote/receipt_remote_data_source.dart'
    as _i13;
import '../data/datasources/receipt/remote/receipt_remote_data_source_impl.dart'
    as _i14;
import '../data/datasources/user/remote/user_remote_data_source.dart' as _i21;
import '../data/datasources/user/remote/user_remote_data_source_impl.dart'
    as _i21;
import '../data/di/locator.dart' as _i36;
import '../data/interceptors/auth_interceptor.dart' as _i34;
import '../data/interceptors/dio_connectivity_request_retrier.dart' as _i5;
import '../data/interceptors/dio_interceptors_manager.dart' as _i35;
import '../data/repositories/auth/auth_repository_impl.dart' as _i28;
import '../data/repositories/receipt/receipt_repository_impl.dart' as _i15;
import '../data/repositories/snackbar_manager/snackbar_manager_impl.dart'
    as _i20;
import '../data/repositories/user/user_repository_impl.dart' as _i28;
import '../domain/repositories/auth/auth_repository.dart' as _i29;
import '../domain/repositories/receipt/receipt_repository.dart' as _i15;
import '../domain/repositories/snackbar_manager/snackbar_manager.dart' as _i19;
import '../domain/repositories/user/user_repository.dart' as _i27;
import '../presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart'
    as _i31;
import '../presentation/pages/enter_code_page/bloc/enter_code_bloc.dart' as _i6;
import '../presentation/pages/favourites_page/bloc/favourites_bloc.dart'
    as _i30;
import '../presentation/pages/forgot_password_page/bloc/forgot_password_bloc.dart'
    as _i8;
import '../presentation/pages/new_password_page/bloc/new_password_bloc.dart'
    as _i9;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i30;
import '../presentation/pages/search_recipe_page/bloc/search_recipe_bloc.dart'
    as _i16;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i31;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart' as _i32;
import '../presentation/pages/splash_page/bloc/splash_bloc.dart'
    as _i33; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.Dio>(() => dataModule.dio);
  gh.factory<_i5.DioConnectivityRequestRetrier>(
      () => _i5.DioConnectivityRequestRetrier(
            dio: get<_i4.Dio>(),
            connectivity: get<_i3.Connectivity>(),
          ));
  gh.factory<_i6.EnterCodeBloc>(() => _i6.EnterCodeBloc());
  gh.factory<_i7.FlutterSecureStorage>(() => dataModule.storage);
  gh.factory<_i8.ForgotPasswordBloc>(() => _i8.ForgotPasswordBloc());
  gh.factory<_i9.NewPasswordBloc>(() => _i9.NewPasswordBloc());
  gh.factory<_i10.NewRecipesBloc>(() => _i10.NewRecipesBloc());
  gh.factory<_i11.PrettyDioLogger>(() => dataModule.logger);
  gh.factory<_i12.ReceiptLocalDataSource>(() => _i12.ReceiptLocalDataSource());
  gh.singleton<_i13.ReceiptRemoteDataSource>(
      _i14.ReceiptDataSourceImpl(get<_i4.Dio>()));
  gh.singleton<_i15.ReceiptRepository>(
      _i16.ReceiptRepositoryImpl(get<_i13.ReceiptRemoteDataSource>()));
  gh.factory<_i17.SearchRecipeBloc>(
      () => _i17.SearchRecipeBloc(get<_i15.ReceiptRepository>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => dataModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i19.SnackBarManager>(_i20.SnackBarManagerImpl());
  gh.singleton<_i21.UserRemoteDataSource>(
      _i22.UserRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSource(
        get<_i18.SharedPreferences>(),
        get<_i7.FlutterSecureStorage>(),
      ));
  gh.singleton<_i24.AuthRemoteDataSource>(
      _i25.AuthDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i26.ReceiptBloc>(
      () => _i26.ReceiptBloc(get<_i15.ReceiptRepository>()));
  gh.singleton<_i27.UserRepository>(_i28.UserRepositoryImpl(
    get<_i23.AuthLocalDataSource>(),
    get<_i21.UserRemoteDataSource>(),
    get<_i18.SharedPreferences>(),
  ));
  gh.singleton<_i29.AuthRepository>(_i30.AuthRepositoryImpl(
    get<_i24.AuthRemoteDataSource>(),
    get<_i23.AuthLocalDataSource>(),
    get<_i27.UserRepository>(),
  ));
  gh.factory<_i31.CreateRecipeBloc>(() => _i31.CreateRecipeBloc(
        get<_i15.ReceiptRepository>(),
        get<_i29.AuthRepository>(),
        get<_i18.SharedPreferences>(),
      ));
  gh.factory<_i30.ProfileBloc>(() => _i30.ProfileBloc(
        get<_i25.UserRepository>(),
        get<_i14.ReceiptRepository>(),
      ));
  gh.factory<_i31.SignInBloc>(
      () => _i31.SignInBloc(get<_i27.AuthRepository>()));
  gh.factory<_i32.SignUpBloc>(
      () => _i32.SignUpBloc(get<_i27.AuthRepository>()));
  gh.factory<_i33.SplashBloc>(
      () => _i33.SplashBloc(get<_i27.AuthRepository>()));
  gh.factory<_i34.AuthInterceptor>(() => _i34.AuthInterceptor(
        get<_i4.Dio>(),
        get<_i29.AuthRepository>(),
        get<_i19.SnackBarManager>(),
        get<_i5.DioConnectivityRequestRetrier>(),
      ));
  gh.singleton<_i35.DioInterceptorsManager>(_i35.DioInterceptorsManager(
    get<_i4.Dio>(),
    get<_i34.AuthInterceptor>(),
  ));
  return get;
}

class _$DataModule extends _i36.DataModule {}
