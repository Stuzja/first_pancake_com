// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart'
    as _i3;
import '../presentation/pages/enter_code_page/bloc/enter_code_bloc.dart' as _i4;
import '../presentation/pages/forgot_password_page/bloc/forgot_password_bloc.dart'
    as _i5;
import '../presentation/pages/new_password_page/bloc/new_password_bloc.dart'
    as _i6;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i7;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i8;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CreateRecipeBloc>(() => _i3.CreateRecipeBloc());
  gh.factory<_i4.EnterCodeBloc>(() => _i4.EnterCodeBloc());
  gh.factory<_i5.ForgotPasswordBloc>(() => _i5.ForgotPasswordBloc());
  gh.factory<_i6.NewPasswordBloc>(() => _i6.NewPasswordBloc());
  gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc());
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc());
  gh.factory<_i9.SignUpBloc>(() => _i9.SignUpBloc());
  return get;
}
