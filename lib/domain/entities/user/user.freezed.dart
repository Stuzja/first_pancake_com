// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int? get subscribersCount => throw _privateConstructorUsedError;
  int? get subscriptionsCount => throw _privateConstructorUsedError;
  int? get receiptsCount => throw _privateConstructorUsedError;
  int? get favouritesCount => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String username,
      String email,
      int? subscribersCount,
      int? subscriptionsCount,
      int? receiptsCount,
      int? favouritesCount,
      String? profile_image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = null,
    Object? email = null,
    Object? subscribersCount = freezed,
    Object? subscriptionsCount = freezed,
    Object? receiptsCount = freezed,
    Object? favouritesCount = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriptionsCount: freezed == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      receiptsCount: freezed == receiptsCount
          ? _value.receiptsCount
          : receiptsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      favouritesCount: freezed == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String username,
      String email,
      int? subscribersCount,
      int? subscriptionsCount,
      int? receiptsCount,
      int? favouritesCount,
      String? profile_image});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = null,
    Object? email = null,
    Object? subscribersCount = freezed,
    Object? subscriptionsCount = freezed,
    Object? receiptsCount = freezed,
    Object? favouritesCount = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriptionsCount: freezed == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      receiptsCount: freezed == receiptsCount
          ? _value.receiptsCount
          : receiptsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      favouritesCount: freezed == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      required this.username,
      required this.email,
      this.subscribersCount,
      this.subscriptionsCount,
      this.receiptsCount,
      this.favouritesCount,
      this.profile_image});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String username;
  @override
  final String email;
  @override
  final int? subscribersCount;
  @override
  final int? subscriptionsCount;
  @override
  final int? receiptsCount;
  @override
  final int? favouritesCount;
  @override
  final String? profile_image;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, subscribersCount: $subscribersCount, subscriptionsCount: $subscriptionsCount, receiptsCount: $receiptsCount, favouritesCount: $favouritesCount, profile_image: $profile_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscriptionsCount, subscriptionsCount) ||
                other.subscriptionsCount == subscriptionsCount) &&
            (identical(other.receiptsCount, receiptsCount) ||
                other.receiptsCount == receiptsCount) &&
            (identical(other.favouritesCount, favouritesCount) ||
                other.favouritesCount == favouritesCount) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      subscribersCount,
      subscriptionsCount,
      receiptsCount,
      favouritesCount,
      profile_image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      required final String username,
      required final String email,
      final int? subscribersCount,
      final int? subscriptionsCount,
      final int? receiptsCount,
      final int? favouritesCount,
      final String? profile_image}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String get username;
  @override
  String get email;
  @override
  int? get subscribersCount;
  @override
  int? get subscriptionsCount;
  @override
  int? get receiptsCount;
  @override
  int? get favouritesCount;
  @override
  String? get profile_image;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
