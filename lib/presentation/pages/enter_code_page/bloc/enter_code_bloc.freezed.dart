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
abstract class _$$ConfirmEmailImplCopyWith<$Res>
    implements $EnterCodeEventCopyWith<$Res> {
  factory _$$ConfirmEmailImplCopyWith(
          _$ConfirmEmailImpl value, $Res Function(_$ConfirmEmailImpl) then) =
      __$$ConfirmEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ConfirmEmailImplCopyWithImpl<$Res>
    extends _$EnterCodeEventCopyWithImpl<$Res, _$ConfirmEmailImpl>
    implements _$$ConfirmEmailImplCopyWith<$Res> {
  __$$ConfirmEmailImplCopyWithImpl(
      _$ConfirmEmailImpl _value, $Res Function(_$ConfirmEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ConfirmEmailImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailImpl implements ConfirmEmail {
  const _$ConfirmEmailImpl({required this.code});

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
            other is _$ConfirmEmailImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailImplCopyWith<_$ConfirmEmailImpl> get copyWith =>
      __$$ConfirmEmailImplCopyWithImpl<_$ConfirmEmailImpl>(this, _$identity);

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
  const factory ConfirmEmail({required final String code}) = _$ConfirmEmailImpl;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmEmailImplCopyWith<_$ConfirmEmailImpl> get copyWith =>
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EnterCodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EnterCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
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
abstract class _$$NavToNewPasswordImplCopyWith<$Res> {
  factory _$$NavToNewPasswordImplCopyWith(_$NavToNewPasswordImpl value,
          $Res Function(_$NavToNewPasswordImpl) then) =
      __$$NavToNewPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToNewPasswordImplCopyWithImpl<$Res>
    extends _$EnterCodeCommandCopyWithImpl<$Res, _$NavToNewPasswordImpl>
    implements _$$NavToNewPasswordImplCopyWith<$Res> {
  __$$NavToNewPasswordImplCopyWithImpl(_$NavToNewPasswordImpl _value,
      $Res Function(_$NavToNewPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToNewPasswordImpl implements NavToNewPassword {
  const _$NavToNewPasswordImpl();

  @override
  String toString() {
    return 'EnterCodeCommand.navToNewPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToNewPasswordImpl);
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
  const factory NavToNewPassword() = _$NavToNewPasswordImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$EnterCodeCommandCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'EnterCodeCommand.error()';
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
  const factory Error() = _$ErrorImpl;
}
