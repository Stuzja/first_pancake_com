// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInClicked,
    required TResult Function(String password) changedPassword,
    required TResult Function(String email) changedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInClicked,
    TResult? Function(String password)? changedPassword,
    TResult? Function(String email)? changedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInClicked,
    TResult Function(String password)? changedPassword,
    TResult Function(String email)? changedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SignInClicked value) signInClicked,
    required TResult Function(ChangedPassword value) changedPassword,
    required TResult Function(ChangedEmail value) changedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SignInClicked value)? signInClicked,
    TResult? Function(ChangedPassword value)? changedPassword,
    TResult? Function(ChangedEmail value)? changedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SignInClicked value)? signInClicked,
    TResult Function(ChangedPassword value)? changedPassword,
    TResult Function(ChangedEmail value)? changedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignInEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInClicked,
    required TResult Function(String password) changedPassword,
    required TResult Function(String email) changedEmail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInClicked,
    TResult? Function(String password)? changedPassword,
    TResult? Function(String email)? changedEmail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInClicked,
    TResult Function(String password)? changedPassword,
    TResult Function(String email)? changedEmail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SignInClicked value) signInClicked,
    required TResult Function(ChangedPassword value) changedPassword,
    required TResult Function(ChangedEmail value) changedEmail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SignInClicked value)? signInClicked,
    TResult? Function(ChangedPassword value)? changedPassword,
    TResult? Function(ChangedEmail value)? changedEmail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SignInClicked value)? signInClicked,
    TResult Function(ChangedPassword value)? changedPassword,
    TResult Function(ChangedEmail value)? changedEmail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SignInEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignInClickedImplCopyWith<$Res> {
  factory _$$SignInClickedImplCopyWith(
          _$SignInClickedImpl value, $Res Function(_$SignInClickedImpl) then) =
      __$$SignInClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInClickedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInClickedImpl>
    implements _$$SignInClickedImplCopyWith<$Res> {
  __$$SignInClickedImplCopyWithImpl(
      _$SignInClickedImpl _value, $Res Function(_$SignInClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInClickedImpl implements SignInClicked {
  const _$SignInClickedImpl();

  @override
  String toString() {
    return 'SignInEvent.signInClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInClicked,
    required TResult Function(String password) changedPassword,
    required TResult Function(String email) changedEmail,
  }) {
    return signInClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInClicked,
    TResult? Function(String password)? changedPassword,
    TResult? Function(String email)? changedEmail,
  }) {
    return signInClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInClicked,
    TResult Function(String password)? changedPassword,
    TResult Function(String email)? changedEmail,
    required TResult orElse(),
  }) {
    if (signInClicked != null) {
      return signInClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SignInClicked value) signInClicked,
    required TResult Function(ChangedPassword value) changedPassword,
    required TResult Function(ChangedEmail value) changedEmail,
  }) {
    return signInClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SignInClicked value)? signInClicked,
    TResult? Function(ChangedPassword value)? changedPassword,
    TResult? Function(ChangedEmail value)? changedEmail,
  }) {
    return signInClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SignInClicked value)? signInClicked,
    TResult Function(ChangedPassword value)? changedPassword,
    TResult Function(ChangedEmail value)? changedEmail,
    required TResult orElse(),
  }) {
    if (signInClicked != null) {
      return signInClicked(this);
    }
    return orElse();
  }
}

abstract class SignInClicked implements SignInEvent {
  const factory SignInClicked() = _$SignInClickedImpl;
}

/// @nodoc
abstract class _$$ChangedPasswordImplCopyWith<$Res> {
  factory _$$ChangedPasswordImplCopyWith(_$ChangedPasswordImpl value,
          $Res Function(_$ChangedPasswordImpl) then) =
      __$$ChangedPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ChangedPasswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ChangedPasswordImpl>
    implements _$$ChangedPasswordImplCopyWith<$Res> {
  __$$ChangedPasswordImplCopyWithImpl(
      _$ChangedPasswordImpl _value, $Res Function(_$ChangedPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ChangedPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedPasswordImpl implements ChangedPassword {
  const _$ChangedPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.changedPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedPasswordImplCopyWith<_$ChangedPasswordImpl> get copyWith =>
      __$$ChangedPasswordImplCopyWithImpl<_$ChangedPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInClicked,
    required TResult Function(String password) changedPassword,
    required TResult Function(String email) changedEmail,
  }) {
    return changedPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInClicked,
    TResult? Function(String password)? changedPassword,
    TResult? Function(String email)? changedEmail,
  }) {
    return changedPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInClicked,
    TResult Function(String password)? changedPassword,
    TResult Function(String email)? changedEmail,
    required TResult orElse(),
  }) {
    if (changedPassword != null) {
      return changedPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SignInClicked value) signInClicked,
    required TResult Function(ChangedPassword value) changedPassword,
    required TResult Function(ChangedEmail value) changedEmail,
  }) {
    return changedPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SignInClicked value)? signInClicked,
    TResult? Function(ChangedPassword value)? changedPassword,
    TResult? Function(ChangedEmail value)? changedEmail,
  }) {
    return changedPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SignInClicked value)? signInClicked,
    TResult Function(ChangedPassword value)? changedPassword,
    TResult Function(ChangedEmail value)? changedEmail,
    required TResult orElse(),
  }) {
    if (changedPassword != null) {
      return changedPassword(this);
    }
    return orElse();
  }
}

abstract class ChangedPassword implements SignInEvent {
  const factory ChangedPassword({required final String password}) =
      _$ChangedPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$ChangedPasswordImplCopyWith<_$ChangedPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedEmailImplCopyWith<$Res> {
  factory _$$ChangedEmailImplCopyWith(
          _$ChangedEmailImpl value, $Res Function(_$ChangedEmailImpl) then) =
      __$$ChangedEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ChangedEmailImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ChangedEmailImpl>
    implements _$$ChangedEmailImplCopyWith<$Res> {
  __$$ChangedEmailImplCopyWithImpl(
      _$ChangedEmailImpl _value, $Res Function(_$ChangedEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ChangedEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedEmailImpl implements ChangedEmail {
  const _$ChangedEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.changedEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedEmailImplCopyWith<_$ChangedEmailImpl> get copyWith =>
      __$$ChangedEmailImplCopyWithImpl<_$ChangedEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInClicked,
    required TResult Function(String password) changedPassword,
    required TResult Function(String email) changedEmail,
  }) {
    return changedEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInClicked,
    TResult? Function(String password)? changedPassword,
    TResult? Function(String email)? changedEmail,
  }) {
    return changedEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInClicked,
    TResult Function(String password)? changedPassword,
    TResult Function(String email)? changedEmail,
    required TResult orElse(),
  }) {
    if (changedEmail != null) {
      return changedEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SignInClicked value) signInClicked,
    required TResult Function(ChangedPassword value) changedPassword,
    required TResult Function(ChangedEmail value) changedEmail,
  }) {
    return changedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SignInClicked value)? signInClicked,
    TResult? Function(ChangedPassword value)? changedPassword,
    TResult? Function(ChangedEmail value)? changedEmail,
  }) {
    return changedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SignInClicked value)? signInClicked,
    TResult Function(ChangedPassword value)? changedPassword,
    TResult Function(ChangedEmail value)? changedEmail,
    required TResult orElse(),
  }) {
    if (changedEmail != null) {
      return changedEmail(this);
    }
    return orElse();
  }
}

abstract class ChangedEmail implements SignInEvent {
  const factory ChangedEmail({required final String email}) =
      _$ChangedEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ChangedEmailImplCopyWith<_$ChangedEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$InitialImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInState.initial(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
  }) {
    return initial(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
  }) {
    return initial?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial(
      {required final String email,
      required final String password}) = _$InitialImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function() error,
    required TResult Function() validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function()? error,
    TResult? Function()? validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function()? error,
    TResult Function()? validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(Error value) error,
    required TResult Function(Validator value) validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(Error value)? error,
    TResult? Function(Validator value)? validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(Error value)? error,
    TResult Function(Validator value)? validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCommandCopyWith<$Res> {
  factory $SignInCommandCopyWith(
          SignInCommand value, $Res Function(SignInCommand) then) =
      _$SignInCommandCopyWithImpl<$Res, SignInCommand>;
}

/// @nodoc
class _$SignInCommandCopyWithImpl<$Res, $Val extends SignInCommand>
    implements $SignInCommandCopyWith<$Res> {
  _$SignInCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToHomePageImplCopyWith<$Res> {
  factory _$$NavToHomePageImplCopyWith(
          _$NavToHomePageImpl value, $Res Function(_$NavToHomePageImpl) then) =
      __$$NavToHomePageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToHomePageImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$NavToHomePageImpl>
    implements _$$NavToHomePageImplCopyWith<$Res> {
  __$$NavToHomePageImplCopyWithImpl(
      _$NavToHomePageImpl _value, $Res Function(_$NavToHomePageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToHomePageImpl implements NavToHomePage {
  const _$NavToHomePageImpl();

  @override
  String toString() {
    return 'SignInCommand.navToHomePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToHomePageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function() error,
    required TResult Function() validator,
  }) {
    return navToHomePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function()? error,
    TResult? Function()? validator,
  }) {
    return navToHomePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function()? error,
    TResult Function()? validator,
    required TResult orElse(),
  }) {
    if (navToHomePage != null) {
      return navToHomePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(Error value) error,
    required TResult Function(Validator value) validator,
  }) {
    return navToHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(Error value)? error,
    TResult? Function(Validator value)? validator,
  }) {
    return navToHomePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(Error value)? error,
    TResult Function(Validator value)? validator,
    required TResult orElse(),
  }) {
    if (navToHomePage != null) {
      return navToHomePage(this);
    }
    return orElse();
  }
}

abstract class NavToHomePage implements SignInCommand {
  const factory NavToHomePage() = _$NavToHomePageImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SignInCommand.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function() error,
    required TResult Function() validator,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function()? error,
    TResult? Function()? validator,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function()? error,
    TResult Function()? validator,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(Error value) error,
    required TResult Function(Validator value) validator,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(Error value)? error,
    TResult? Function(Validator value)? validator,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(Error value)? error,
    TResult Function(Validator value)? validator,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignInCommand {
  const factory Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$ValidatorImplCopyWith<$Res> {
  factory _$$ValidatorImplCopyWith(
          _$ValidatorImpl value, $Res Function(_$ValidatorImpl) then) =
      __$$ValidatorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatorImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$ValidatorImpl>
    implements _$$ValidatorImplCopyWith<$Res> {
  __$$ValidatorImplCopyWithImpl(
      _$ValidatorImpl _value, $Res Function(_$ValidatorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidatorImpl implements Validator {
  const _$ValidatorImpl();

  @override
  String toString() {
    return 'SignInCommand.validator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidatorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function() error,
    required TResult Function() validator,
  }) {
    return validator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function()? error,
    TResult? Function()? validator,
  }) {
    return validator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function()? error,
    TResult Function()? validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(Error value) error,
    required TResult Function(Validator value) validator,
  }) {
    return validator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(Error value)? error,
    TResult? Function(Validator value)? validator,
  }) {
    return validator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(Error value)? error,
    TResult Function(Validator value)? validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator(this);
    }
    return orElse();
  }
}

abstract class Validator implements SignInCommand {
  const factory Validator() = _$ValidatorImpl;
}
