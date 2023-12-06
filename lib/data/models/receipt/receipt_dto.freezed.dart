// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptDto _$ReceiptDtoFromJson(Map<String, dynamic> json) {
  return _ReceiptDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptDto {
  String get title => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptDtoCopyWith<ReceiptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDtoCopyWith<$Res> {
  factory $ReceiptDtoCopyWith(
          ReceiptDto value, $Res Function(ReceiptDto) then) =
      _$ReceiptDtoCopyWithImpl<$Res, ReceiptDto>;
  @useResult
  $Res call({String title, String? photo, String? description});
}

/// @nodoc
class _$ReceiptDtoCopyWithImpl<$Res, $Val extends ReceiptDto>
    implements $ReceiptDtoCopyWith<$Res> {
  _$ReceiptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? photo = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptDtoImplCopyWith<$Res>
    implements $ReceiptDtoCopyWith<$Res> {
  factory _$$ReceiptDtoImplCopyWith(
          _$ReceiptDtoImpl value, $Res Function(_$ReceiptDtoImpl) then) =
      __$$ReceiptDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? photo, String? description});
}

/// @nodoc
class __$$ReceiptDtoImplCopyWithImpl<$Res>
    extends _$ReceiptDtoCopyWithImpl<$Res, _$ReceiptDtoImpl>
    implements _$$ReceiptDtoImplCopyWith<$Res> {
  __$$ReceiptDtoImplCopyWithImpl(
      _$ReceiptDtoImpl _value, $Res Function(_$ReceiptDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? photo = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ReceiptDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptDtoImpl implements _ReceiptDto {
  const _$ReceiptDtoImpl({required this.title, this.photo, this.description});

  factory _$ReceiptDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String? photo;
  @override
  final String? description;

  @override
  String toString() {
    return 'ReceiptDto(title: $title, photo: $photo, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, photo, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptDtoImplCopyWith<_$ReceiptDtoImpl> get copyWith =>
      __$$ReceiptDtoImplCopyWithImpl<_$ReceiptDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptDtoImplToJson(
      this,
    );
  }
}

abstract class _ReceiptDto implements ReceiptDto {
  const factory _ReceiptDto(
      {required final String title,
      final String? photo,
      final String? description}) = _$ReceiptDtoImpl;

  factory _ReceiptDto.fromJson(Map<String, dynamic> json) =
      _$ReceiptDtoImpl.fromJson;

  @override
  String get title;
  @override
  String? get photo;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptDtoImplCopyWith<_$ReceiptDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
