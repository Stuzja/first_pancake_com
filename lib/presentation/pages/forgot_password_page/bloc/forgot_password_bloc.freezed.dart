// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendCode value) sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCode value)? sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCode value)? sendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendCodeImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$SendCodeImplCopyWith(
          _$SendCodeImpl value, $Res Function(_$SendCodeImpl) then) =
      __$$SendCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendCodeImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$SendCodeImpl>
    implements _$$SendCodeImplCopyWith<$Res> {
  __$$SendCodeImplCopyWithImpl(
      _$SendCodeImpl _value, $Res Function(_$SendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeImpl implements SendCode {
  const _$SendCodeImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      __$$SendCodeImplCopyWithImpl<_$SendCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendCode,
  }) {
    return sendCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendCode,
  }) {
    return sendCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendCode,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendCode value) sendCode,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCode value)? sendCode,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCode value)? sendCode,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendCode implements ForgotPasswordEvent {
  const factory SendCode({required final String email}) = _$SendCodeImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
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
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

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
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ForgotPasswordState.initial()';
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

abstract class _Initial implements ForgotPasswordState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
mixin _$ForgotPasswordCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToEnterCode,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToEnterCode,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToEnterCode,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToEnterCode value) navToEnterCode,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToEnterCode value)? navToEnterCode,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToEnterCode value)? navToEnterCode,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordCommandCopyWith<$Res> {
  factory $ForgotPasswordCommandCopyWith(ForgotPasswordCommand value,
          $Res Function(ForgotPasswordCommand) then) =
      _$ForgotPasswordCommandCopyWithImpl<$Res, ForgotPasswordCommand>;
}

/// @nodoc
class _$ForgotPasswordCommandCopyWithImpl<$Res,
        $Val extends ForgotPasswordCommand>
    implements $ForgotPasswordCommandCopyWith<$Res> {
  _$ForgotPasswordCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToEnterCodeImplCopyWith<$Res> {
  factory _$$NavToEnterCodeImplCopyWith(_$NavToEnterCodeImpl value,
          $Res Function(_$NavToEnterCodeImpl) then) =
      __$$NavToEnterCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToEnterCodeImplCopyWithImpl<$Res>
    extends _$ForgotPasswordCommandCopyWithImpl<$Res, _$NavToEnterCodeImpl>
    implements _$$NavToEnterCodeImplCopyWith<$Res> {
  __$$NavToEnterCodeImplCopyWithImpl(
      _$NavToEnterCodeImpl _value, $Res Function(_$NavToEnterCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToEnterCodeImpl implements NavToEnterCode {
  const _$NavToEnterCodeImpl();

  @override
  String toString() {
    return 'ForgotPasswordCommand.navToEnterCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToEnterCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToEnterCode,
    required TResult Function() error,
  }) {
    return navToEnterCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToEnterCode,
    TResult? Function()? error,
  }) {
    return navToEnterCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToEnterCode,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navToEnterCode != null) {
      return navToEnterCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToEnterCode value) navToEnterCode,
    required TResult Function(Error value) error,
  }) {
    return navToEnterCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToEnterCode value)? navToEnterCode,
    TResult? Function(Error value)? error,
  }) {
    return navToEnterCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToEnterCode value)? navToEnterCode,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToEnterCode != null) {
      return navToEnterCode(this);
    }
    return orElse();
  }
}

abstract class NavToEnterCode implements ForgotPasswordCommand {
  const factory NavToEnterCode() = _$NavToEnterCodeImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ForgotPasswordCommandCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ForgotPasswordCommand.error()';
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
    required TResult Function() navToEnterCode,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToEnterCode,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToEnterCode,
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
    required TResult Function(NavToEnterCode value) navToEnterCode,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToEnterCode value)? navToEnterCode,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToEnterCode value)? navToEnterCode,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ForgotPasswordCommand {
  const factory Error() = _$ErrorImpl;
}
