// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationDto _$RegistrationDtoFromJson(Map<String, dynamic> json) {
  return _RegistrationDto.fromJson(json);
}

/// @nodoc
mixin _$RegistrationDto {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationDtoCopyWith<RegistrationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationDtoCopyWith<$Res> {
  factory $RegistrationDtoCopyWith(
          RegistrationDto value, $Res Function(RegistrationDto) then) =
      _$RegistrationDtoCopyWithImpl<$Res, RegistrationDto>;
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class _$RegistrationDtoCopyWithImpl<$Res, $Val extends RegistrationDto>
    implements $RegistrationDtoCopyWith<$Res> {
  _$RegistrationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationDtoImplCopyWith<$Res>
    implements $RegistrationDtoCopyWith<$Res> {
  factory _$$RegistrationDtoImplCopyWith(_$RegistrationDtoImpl value,
          $Res Function(_$RegistrationDtoImpl) then) =
      __$$RegistrationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$$RegistrationDtoImplCopyWithImpl<$Res>
    extends _$RegistrationDtoCopyWithImpl<$Res, _$RegistrationDtoImpl>
    implements _$$RegistrationDtoImplCopyWith<$Res> {
  __$$RegistrationDtoImplCopyWithImpl(
      _$RegistrationDtoImpl _value, $Res Function(_$RegistrationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationDtoImpl implements _RegistrationDto {
  const _$RegistrationDtoImpl(
      {required this.email, required this.username, required this.password});

  factory _$RegistrationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationDto(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationDtoImplCopyWith<_$RegistrationDtoImpl> get copyWith =>
      __$$RegistrationDtoImplCopyWithImpl<_$RegistrationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationDtoImplToJson(
      this,
    );
  }
}

abstract class _RegistrationDto implements RegistrationDto {
  const factory _RegistrationDto(
      {required final String email,
      required final String username,
      required final String password}) = _$RegistrationDtoImpl;

  factory _RegistrationDto.fromJson(Map<String, dynamic> json) =
      _$RegistrationDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationDtoImplCopyWith<_$RegistrationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
