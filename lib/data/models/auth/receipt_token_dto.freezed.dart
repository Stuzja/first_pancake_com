// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptTokenDto _$ReceiptTokenDtoFromJson(Map<String, dynamic> json) {
  return _ReceiptTokenDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptTokenDto {
  String get token => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptTokenDtoCopyWith<ReceiptTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptTokenDtoCopyWith<$Res> {
  factory $ReceiptTokenDtoCopyWith(
          ReceiptTokenDto value, $Res Function(ReceiptTokenDto) then) =
      _$ReceiptTokenDtoCopyWithImpl<$Res, ReceiptTokenDto>;
  @useResult
  $Res call({String token, int user_id});
}

/// @nodoc
class _$ReceiptTokenDtoCopyWithImpl<$Res, $Val extends ReceiptTokenDto>
    implements $ReceiptTokenDtoCopyWith<$Res> {
  _$ReceiptTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptTokenDtoImplCopyWith<$Res>
    implements $ReceiptTokenDtoCopyWith<$Res> {
  factory _$$ReceiptTokenDtoImplCopyWith(_$ReceiptTokenDtoImpl value,
          $Res Function(_$ReceiptTokenDtoImpl) then) =
      __$$ReceiptTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, int user_id});
}

/// @nodoc
class __$$ReceiptTokenDtoImplCopyWithImpl<$Res>
    extends _$ReceiptTokenDtoCopyWithImpl<$Res, _$ReceiptTokenDtoImpl>
    implements _$$ReceiptTokenDtoImplCopyWith<$Res> {
  __$$ReceiptTokenDtoImplCopyWithImpl(
      _$ReceiptTokenDtoImpl _value, $Res Function(_$ReceiptTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user_id = null,
  }) {
    return _then(_$ReceiptTokenDtoImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptTokenDtoImpl implements _ReceiptTokenDto {
  const _$ReceiptTokenDtoImpl({required this.token, required this.user_id});

  factory _$ReceiptTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptTokenDtoImplFromJson(json);

  @override
  final String token;
  @override
  final int user_id;

  @override
  String toString() {
    return 'ReceiptTokenDto(token: $token, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptTokenDtoImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptTokenDtoImplCopyWith<_$ReceiptTokenDtoImpl> get copyWith =>
      __$$ReceiptTokenDtoImplCopyWithImpl<_$ReceiptTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _ReceiptTokenDto implements ReceiptTokenDto {
  const factory _ReceiptTokenDto(
      {required final String token,
      required final int user_id}) = _$ReceiptTokenDtoImpl;

  factory _ReceiptTokenDto.fromJson(Map<String, dynamic> json) =
      _$ReceiptTokenDtoImpl.fromJson;

  @override
  String get token;
  @override
  int get user_id;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptTokenDtoImplCopyWith<_$ReceiptTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
