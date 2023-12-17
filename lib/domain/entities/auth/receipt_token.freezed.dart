// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptToken _$ReceiptTokenFromJson(Map<String, dynamic> json) {
  return _ReceiptToken.fromJson(json);
}

/// @nodoc
mixin _$ReceiptToken {
  String get token => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptTokenCopyWith<ReceiptToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptTokenCopyWith<$Res> {
  factory $ReceiptTokenCopyWith(
          ReceiptToken value, $Res Function(ReceiptToken) then) =
      _$ReceiptTokenCopyWithImpl<$Res, ReceiptToken>;
  @useResult
  $Res call({String token, int user_id, String? profile_image});
}

/// @nodoc
class _$ReceiptTokenCopyWithImpl<$Res, $Val extends ReceiptToken>
    implements $ReceiptTokenCopyWith<$Res> {
  _$ReceiptTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user_id = null,
    Object? profile_image = freezed,
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
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptTokenImplCopyWith<$Res>
    implements $ReceiptTokenCopyWith<$Res> {
  factory _$$ReceiptTokenImplCopyWith(
          _$ReceiptTokenImpl value, $Res Function(_$ReceiptTokenImpl) then) =
      __$$ReceiptTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, int user_id, String? profile_image});
}

/// @nodoc
class __$$ReceiptTokenImplCopyWithImpl<$Res>
    extends _$ReceiptTokenCopyWithImpl<$Res, _$ReceiptTokenImpl>
    implements _$$ReceiptTokenImplCopyWith<$Res> {
  __$$ReceiptTokenImplCopyWithImpl(
      _$ReceiptTokenImpl _value, $Res Function(_$ReceiptTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user_id = null,
    Object? profile_image = freezed,
  }) {
    return _then(_$ReceiptTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptTokenImpl implements _ReceiptToken {
  const _$ReceiptTokenImpl(
      {required this.token, required this.user_id, this.profile_image});

  factory _$ReceiptTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptTokenImplFromJson(json);

  @override
  final String token;
  @override
  final int user_id;
  @override
  final String? profile_image;

  @override
  String toString() {
    return 'ReceiptToken(token: $token, user_id: $user_id, profile_image: $profile_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user_id, profile_image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptTokenImplCopyWith<_$ReceiptTokenImpl> get copyWith =>
      __$$ReceiptTokenImplCopyWithImpl<_$ReceiptTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptTokenImplToJson(
      this,
    );
  }
}

abstract class _ReceiptToken implements ReceiptToken {
  const factory _ReceiptToken(
      {required final String token,
      required final int user_id,
      final String? profile_image}) = _$ReceiptTokenImpl;

  factory _ReceiptToken.fromJson(Map<String, dynamic> json) =
      _$ReceiptTokenImpl.fromJson;

  @override
  String get token;
  @override
  int get user_id;
  @override
  String? get profile_image;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptTokenImplCopyWith<_$ReceiptTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
