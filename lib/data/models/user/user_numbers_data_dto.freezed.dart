// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_numbers_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNumbersDataDto _$UserNumbersDataDtoFromJson(Map<String, dynamic> json) {
  return _UserNumbersDataDto.fromJson(json);
}

/// @nodoc
mixin _$UserNumbersDataDto {
  int get subscribers_count => throw _privateConstructorUsedError;
  int get subscriptions_count => throw _privateConstructorUsedError;
  int get receipts_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNumbersDataDtoCopyWith<UserNumbersDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNumbersDataDtoCopyWith<$Res> {
  factory $UserNumbersDataDtoCopyWith(
          UserNumbersDataDto value, $Res Function(UserNumbersDataDto) then) =
      _$UserNumbersDataDtoCopyWithImpl<$Res, UserNumbersDataDto>;
  @useResult
  $Res call(
      {int subscribers_count, int subscriptions_count, int receipts_count});
}

/// @nodoc
class _$UserNumbersDataDtoCopyWithImpl<$Res, $Val extends UserNumbersDataDto>
    implements $UserNumbersDataDtoCopyWith<$Res> {
  _$UserNumbersDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers_count = null,
    Object? subscriptions_count = null,
    Object? receipts_count = null,
  }) {
    return _then(_value.copyWith(
      subscribers_count: null == subscribers_count
          ? _value.subscribers_count
          : subscribers_count // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions_count: null == subscriptions_count
          ? _value.subscriptions_count
          : subscriptions_count // ignore: cast_nullable_to_non_nullable
              as int,
      receipts_count: null == receipts_count
          ? _value.receipts_count
          : receipts_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNumbersDataDtoImplCopyWith<$Res>
    implements $UserNumbersDataDtoCopyWith<$Res> {
  factory _$$UserNumbersDataDtoImplCopyWith(_$UserNumbersDataDtoImpl value,
          $Res Function(_$UserNumbersDataDtoImpl) then) =
      __$$UserNumbersDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int subscribers_count, int subscriptions_count, int receipts_count});
}

/// @nodoc
class __$$UserNumbersDataDtoImplCopyWithImpl<$Res>
    extends _$UserNumbersDataDtoCopyWithImpl<$Res, _$UserNumbersDataDtoImpl>
    implements _$$UserNumbersDataDtoImplCopyWith<$Res> {
  __$$UserNumbersDataDtoImplCopyWithImpl(_$UserNumbersDataDtoImpl _value,
      $Res Function(_$UserNumbersDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers_count = null,
    Object? subscriptions_count = null,
    Object? receipts_count = null,
  }) {
    return _then(_$UserNumbersDataDtoImpl(
      subscribers_count: null == subscribers_count
          ? _value.subscribers_count
          : subscribers_count // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions_count: null == subscriptions_count
          ? _value.subscriptions_count
          : subscriptions_count // ignore: cast_nullable_to_non_nullable
              as int,
      receipts_count: null == receipts_count
          ? _value.receipts_count
          : receipts_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNumbersDataDtoImpl implements _UserNumbersDataDto {
  const _$UserNumbersDataDtoImpl(
      {required this.subscribers_count,
      required this.subscriptions_count,
      required this.receipts_count});

  factory _$UserNumbersDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNumbersDataDtoImplFromJson(json);

  @override
  final int subscribers_count;
  @override
  final int subscriptions_count;
  @override
  final int receipts_count;

  @override
  String toString() {
    return 'UserNumbersDataDto(subscribers_count: $subscribers_count, subscriptions_count: $subscriptions_count, receipts_count: $receipts_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNumbersDataDtoImpl &&
            (identical(other.subscribers_count, subscribers_count) ||
                other.subscribers_count == subscribers_count) &&
            (identical(other.subscriptions_count, subscriptions_count) ||
                other.subscriptions_count == subscriptions_count) &&
            (identical(other.receipts_count, receipts_count) ||
                other.receipts_count == receipts_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subscribers_count, subscriptions_count, receipts_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNumbersDataDtoImplCopyWith<_$UserNumbersDataDtoImpl> get copyWith =>
      __$$UserNumbersDataDtoImplCopyWithImpl<_$UserNumbersDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNumbersDataDtoImplToJson(
      this,
    );
  }
}

abstract class _UserNumbersDataDto implements UserNumbersDataDto {
  const factory _UserNumbersDataDto(
      {required final int subscribers_count,
      required final int subscriptions_count,
      required final int receipts_count}) = _$UserNumbersDataDtoImpl;

  factory _UserNumbersDataDto.fromJson(Map<String, dynamic> json) =
      _$UserNumbersDataDtoImpl.fromJson;

  @override
  int get subscribers_count;
  @override
  int get subscriptions_count;
  @override
  int get receipts_count;
  @override
  @JsonKey(ignore: true)
  _$$UserNumbersDataDtoImplCopyWith<_$UserNumbersDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
