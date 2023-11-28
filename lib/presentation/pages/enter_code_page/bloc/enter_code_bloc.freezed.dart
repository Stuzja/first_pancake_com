// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnterCodeEvent {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) confirmEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? confirmEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? confirmEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmail value) confirmEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmail value)? confirmEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmail value)? confirmEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterCodeEventCopyWith<EnterCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterCodeEventCopyWith<$Res> {
  factory $EnterCodeEventCopyWith(
          EnterCodeEvent value, $Res Function(EnterCodeEvent) then) =
      _$EnterCodeEventCopyWithImpl<$Res, EnterCodeEvent>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$EnterCodeEventCopyWithImpl<$Res, $Val extends EnterCodeEvent>
    implements $EnterCodeEventCopyWith<$Res> {
  _$EnterCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmEmailCopyWith<$Res>
    implements $EnterCodeEventCopyWith<$Res> {
  factory _$$ConfirmEmailCopyWith(
          _$ConfirmEmail value, $Res Function(_$ConfirmEmail) then) =
      __$$ConfirmEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ConfirmEmailCopyWithImpl<$Res>
    extends _$EnterCodeEventCopyWithImpl<$Res, _$ConfirmEmail>
    implements _$$ConfirmEmailCopyWith<$Res> {
  __$$ConfirmEmailCopyWithImpl(
      _$ConfirmEmail _value, $Res Function(_$ConfirmEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ConfirmEmail(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmail implements ConfirmEmail {
  const _$ConfirmEmail({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'EnterCodeEvent.confirmEmail(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmail &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailCopyWith<_$ConfirmEmail> get copyWith =>
      __$$ConfirmEmailCopyWithImpl<_$ConfirmEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) confirmEmail,
  }) {
    return confirmEmail(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? confirmEmail,
  }) {
    return confirmEmail?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? confirmEmail,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmail value) confirmEmail,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmail value)? confirmEmail,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmail value)? confirmEmail,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmail implements EnterCodeEvent {
  const factory ConfirmEmail({required final String code}) = _$ConfirmEmail;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmEmailCopyWith<_$ConfirmEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnterCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
}

/// @nodoc
abstract class $EnterCodeStateCopyWith<$Res> {
  factory $EnterCodeStateCopyWith(
          EnterCodeState value, $Res Function(EnterCodeState) then) =
      _$EnterCodeStateCopyWithImpl<$Res, EnterCodeState>;
}

/// @nodoc
class _$EnterCodeStateCopyWithImpl<$Res, $Val extends EnterCodeState>
    implements $EnterCodeStateCopyWith<$Res> {
  _$EnterCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EnterCodeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EnterCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
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

abstract class _Initial implements EnterCodeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
mixin _$EnterCodeCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNewPassword,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNewPassword,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNewPassword,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToNewPassword value) navToNewPassword,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNewPassword value)? navToNewPassword,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNewPassword value)? navToNewPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterCodeCommandCopyWith<$Res> {
  factory $EnterCodeCommandCopyWith(
          EnterCodeCommand value, $Res Function(EnterCodeCommand) then) =
      _$EnterCodeCommandCopyWithImpl<$Res, EnterCodeCommand>;
}

/// @nodoc
class _$EnterCodeCommandCopyWithImpl<$Res, $Val extends EnterCodeCommand>
    implements $EnterCodeCommandCopyWith<$Res> {
  _$EnterCodeCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToNewPasswordCopyWith<$Res> {
  factory _$$NavToNewPasswordCopyWith(
          _$NavToNewPassword value, $Res Function(_$NavToNewPassword) then) =
      __$$NavToNewPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToNewPasswordCopyWithImpl<$Res>
    extends _$EnterCodeCommandCopyWithImpl<$Res, _$NavToNewPassword>
    implements _$$NavToNewPasswordCopyWith<$Res> {
  __$$NavToNewPasswordCopyWithImpl(
      _$NavToNewPassword _value, $Res Function(_$NavToNewPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToNewPassword implements NavToNewPassword {
  const _$NavToNewPassword();

  @override
  String toString() {
    return 'EnterCodeCommand.navToNewPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToNewPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNewPassword,
    required TResult Function() error,
  }) {
    return navToNewPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNewPassword,
    TResult? Function()? error,
  }) {
    return navToNewPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNewPassword,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navToNewPassword != null) {
      return navToNewPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToNewPassword value) navToNewPassword,
    required TResult Function(Error value) error,
  }) {
    return navToNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNewPassword value)? navToNewPassword,
    TResult? Function(Error value)? error,
  }) {
    return navToNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNewPassword value)? navToNewPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToNewPassword != null) {
      return navToNewPassword(this);
    }
    return orElse();
  }
}

abstract class NavToNewPassword implements EnterCodeCommand {
  const factory NavToNewPassword() = _$NavToNewPassword;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$EnterCodeCommandCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'EnterCodeCommand.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNewPassword,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNewPassword,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNewPassword,
    TResult Function()? error,
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
    required TResult Function(NavToNewPassword value) navToNewPassword,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNewPassword value)? navToNewPassword,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNewPassword value)? navToNewPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements EnterCodeCommand {
  const factory Error() = _$Error;
}
