// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  int? get user_id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int? get subscribers_count => throw _privateConstructorUsedError;
  int? get receipts_count => throw _privateConstructorUsedError;
  int? get favoutite_receipts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {int? user_id,
      String username,
      String email,
      int? subscribers_count,
      int? receipts_count,
      int? favoutite_receipts});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? username = null,
    Object? email = null,
    Object? subscribers_count = freezed,
    Object? receipts_count = freezed,
    Object? favoutite_receipts = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subscribers_count: freezed == subscribers_count
          ? _value.subscribers_count
          : subscribers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      receipts_count: freezed == receipts_count
          ? _value.receipts_count
          : receipts_count // ignore: cast_nullable_to_non_nullable
              as int?,
      favoutite_receipts: freezed == favoutite_receipts
          ? _value.favoutite_receipts
          : favoutite_receipts // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? user_id,
      String username,
      String email,
      int? subscribers_count,
      int? receipts_count,
      int? favoutite_receipts});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? username = null,
    Object? email = null,
    Object? subscribers_count = freezed,
    Object? receipts_count = freezed,
    Object? favoutite_receipts = freezed,
  }) {
    return _then(_$UserDtoImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subscribers_count: freezed == subscribers_count
          ? _value.subscribers_count
          : subscribers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      receipts_count: freezed == receipts_count
          ? _value.receipts_count
          : receipts_count // ignore: cast_nullable_to_non_nullable
              as int?,
      favoutite_receipts: freezed == favoutite_receipts
          ? _value.favoutite_receipts
          : favoutite_receipts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl implements _UserDto {
  const _$UserDtoImpl(
      {this.user_id,
      required this.username,
      required this.email,
      this.subscribers_count,
      this.receipts_count,
      this.favoutite_receipts});

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  final int? user_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final int? subscribers_count;
  @override
  final int? receipts_count;
  @override
  final int? favoutite_receipts;

  @override
  String toString() {
    return 'UserDto(user_id: $user_id, username: $username, email: $email, subscribers_count: $subscribers_count, receipts_count: $receipts_count, favoutite_receipts: $favoutite_receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subscribers_count, subscribers_count) ||
                other.subscribers_count == subscribers_count) &&
            (identical(other.receipts_count, receipts_count) ||
                other.receipts_count == receipts_count) &&
            (identical(other.favoutite_receipts, favoutite_receipts) ||
                other.favoutite_receipts == favoutite_receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user_id, username, email,
      subscribers_count, receipts_count, favoutite_receipts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {final int? user_id,
      required final String username,
      required final String email,
      final int? subscribers_count,
      final int? receipts_count,
      final int? favoutite_receipts}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  int? get user_id;
  @override
  String get username;
  @override
  String get email;
  @override
  int? get subscribers_count;
  @override
  int? get receipts_count;
  @override
  int? get favoutite_receipts;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
