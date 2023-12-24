// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_numbers_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNumbersData _$UserNumbersDataFromJson(Map<String, dynamic> json) {
  return _UserNumbersData.fromJson(json);
}

/// @nodoc
mixin _$UserNumbersData {
  int get subscribers_count => throw _privateConstructorUsedError;
  int get subscriptions_count => throw _privateConstructorUsedError;
  int get receipts_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNumbersDataCopyWith<UserNumbersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNumbersDataCopyWith<$Res> {
  factory $UserNumbersDataCopyWith(
          UserNumbersData value, $Res Function(UserNumbersData) then) =
      _$UserNumbersDataCopyWithImpl<$Res, UserNumbersData>;
  @useResult
  $Res call(
      {int subscribers_count, int subscriptions_count, int receipts_count});
}

/// @nodoc
class _$UserNumbersDataCopyWithImpl<$Res, $Val extends UserNumbersData>
    implements $UserNumbersDataCopyWith<$Res> {
  _$UserNumbersDataCopyWithImpl(this._value, this._then);

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
abstract class _$$UserNumbersDataImplCopyWith<$Res>
    implements $UserNumbersDataCopyWith<$Res> {
  factory _$$UserNumbersDataImplCopyWith(_$UserNumbersDataImpl value,
          $Res Function(_$UserNumbersDataImpl) then) =
      __$$UserNumbersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int subscribers_count, int subscriptions_count, int receipts_count});
}

/// @nodoc
class __$$UserNumbersDataImplCopyWithImpl<$Res>
    extends _$UserNumbersDataCopyWithImpl<$Res, _$UserNumbersDataImpl>
    implements _$$UserNumbersDataImplCopyWith<$Res> {
  __$$UserNumbersDataImplCopyWithImpl(
      _$UserNumbersDataImpl _value, $Res Function(_$UserNumbersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers_count = null,
    Object? subscriptions_count = null,
    Object? receipts_count = null,
  }) {
    return _then(_$UserNumbersDataImpl(
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
class _$UserNumbersDataImpl implements _UserNumbersData {
  const _$UserNumbersDataImpl(
      {required this.subscribers_count,
      required this.subscriptions_count,
      required this.receipts_count});

  factory _$UserNumbersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNumbersDataImplFromJson(json);

  @override
  final int subscribers_count;
  @override
  final int subscriptions_count;
  @override
  final int receipts_count;

  @override
  String toString() {
    return 'UserNumbersData(subscribers_count: $subscribers_count, subscriptions_count: $subscriptions_count, receipts_count: $receipts_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNumbersDataImpl &&
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
  _$$UserNumbersDataImplCopyWith<_$UserNumbersDataImpl> get copyWith =>
      __$$UserNumbersDataImplCopyWithImpl<_$UserNumbersDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNumbersDataImplToJson(
      this,
    );
  }
}

abstract class _UserNumbersData implements UserNumbersData {
  const factory _UserNumbersData(
      {required final int subscribers_count,
      required final int subscriptions_count,
      required final int receipts_count}) = _$UserNumbersDataImpl;

  factory _UserNumbersData.fromJson(Map<String, dynamic> json) =
      _$UserNumbersDataImpl.fromJson;

  @override
  int get subscribers_count;
  @override
  int get subscriptions_count;
  @override
  int get receipts_count;
  @override
  @JsonKey(ignore: true)
  _$$UserNumbersDataImplCopyWith<_$UserNumbersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
