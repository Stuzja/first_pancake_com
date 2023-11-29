// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Receipt _$ReceiptFromJson(Map<String, dynamic> json) {
  return _Receipt.fromJson(json);
}

/// @nodoc
mixin _$Receipt {
  String get title =>
      throw _privateConstructorUsedError; // required Photo photo,
  String? get description => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res, Receipt>;
  @useResult
  $Res call({String title, String? description, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res, $Val extends Receipt>
    implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReceiptCopyWithImpl<$Res>
    extends _$ReceiptCopyWithImpl<$Res, _$_Receipt>
    implements _$$_ReceiptCopyWith<$Res> {
  __$$_ReceiptCopyWithImpl(_$_Receipt _value, $Res Function(_$_Receipt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Receipt(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Receipt implements _Receipt {
  const _$_Receipt({required this.title, this.description, this.user});

  factory _$_Receipt.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptFromJson(json);

  @override
  final String title;
// required Photo photo,
  @override
  final String? description;
  @override
  final User? user;

  @override
  String toString() {
    return 'Receipt(title: $title, description: $description, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptToJson(
      this,
    );
  }
}

abstract class _Receipt implements Receipt {
  const factory _Receipt(
      {required final String title,
      final String? description,
      final User? user}) = _$_Receipt;

  factory _Receipt.fromJson(Map<String, dynamic> json) = _$_Receipt.fromJson;

  @override
  String get title;
  @override // required Photo photo,
  String? get description;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}
