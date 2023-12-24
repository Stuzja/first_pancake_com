// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? userId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$StartedImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl(this.userId);

  @override
  final int? userId;

  @override
  String toString() {
    return 'ProfileEvent.started(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) {
    return started(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) {
    return started?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ProfileEvent {
  const factory Started(final int? userId) = _$StartedImpl;

  int? get userId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickedSubscribeButtonImplCopyWith<$Res> {
  factory _$$ClickedSubscribeButtonImplCopyWith(
          _$ClickedSubscribeButtonImpl value,
          $Res Function(_$ClickedSubscribeButtonImpl) then) =
      __$$ClickedSubscribeButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ClickedSubscribeButtonImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ClickedSubscribeButtonImpl>
    implements _$$ClickedSubscribeButtonImplCopyWith<$Res> {
  __$$ClickedSubscribeButtonImplCopyWithImpl(
      _$ClickedSubscribeButtonImpl _value,
      $Res Function(_$ClickedSubscribeButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ClickedSubscribeButtonImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickedSubscribeButtonImpl implements ClickedSubscribeButton {
  const _$ClickedSubscribeButtonImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'ProfileEvent.clickedSubscribeButton(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickedSubscribeButtonImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickedSubscribeButtonImplCopyWith<_$ClickedSubscribeButtonImpl>
      get copyWith => __$$ClickedSubscribeButtonImplCopyWithImpl<
          _$ClickedSubscribeButtonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) {
    return clickedSubscribeButton(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) {
    return clickedSubscribeButton?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (clickedSubscribeButton != null) {
      return clickedSubscribeButton(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) {
    return clickedSubscribeButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) {
    return clickedSubscribeButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (clickedSubscribeButton != null) {
      return clickedSubscribeButton(this);
    }
    return orElse();
  }
}

abstract class ClickedSubscribeButton implements ProfileEvent {
  const factory ClickedSubscribeButton(final int userId) =
      _$ClickedSubscribeButtonImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$ClickedSubscribeButtonImplCopyWith<_$ClickedSubscribeButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements ProfileEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$AddProfileImageImplCopyWith<$Res> {
  factory _$$AddProfileImageImplCopyWith(_$AddProfileImageImpl value,
          $Res Function(_$AddProfileImageImpl) then) =
      __$$AddProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? userId, String imageToBase});
}

/// @nodoc
class __$$AddProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$AddProfileImageImpl>
    implements _$$AddProfileImageImplCopyWith<$Res> {
  __$$AddProfileImageImplCopyWithImpl(
      _$AddProfileImageImpl _value, $Res Function(_$AddProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? imageToBase = null,
  }) {
    return _then(_$AddProfileImageImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      null == imageToBase
          ? _value.imageToBase
          : imageToBase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProfileImageImpl implements AddProfileImage {
  const _$AddProfileImageImpl(this.userId, this.imageToBase);

  @override
  final int? userId;
  @override
  final String imageToBase;

  @override
  String toString() {
    return 'ProfileEvent.addProfileImage(userId: $userId, imageToBase: $imageToBase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProfileImageImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageToBase, imageToBase) ||
                other.imageToBase == imageToBase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, imageToBase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProfileImageImplCopyWith<_$AddProfileImageImpl> get copyWith =>
      __$$AddProfileImageImplCopyWithImpl<_$AddProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) {
    return addProfileImage(userId, imageToBase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) {
    return addProfileImage?.call(userId, imageToBase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (addProfileImage != null) {
      return addProfileImage(userId, imageToBase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) {
    return addProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) {
    return addProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (addProfileImage != null) {
      return addProfileImage(this);
    }
    return orElse();
  }
}

abstract class AddProfileImage implements ProfileEvent {
  const factory AddProfileImage(final int? userId, final String imageToBase) =
      _$AddProfileImageImpl;

  int? get userId;
  String get imageToBase;
  @JsonKey(ignore: true)
  _$$AddProfileImageImplCopyWith<_$AddProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfileImageImplCopyWith<$Res> {
  factory _$$DeleteProfileImageImplCopyWith(_$DeleteProfileImageImpl value,
          $Res Function(_$DeleteProfileImageImpl) then) =
      __$$DeleteProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? userId});
}

/// @nodoc
class __$$DeleteProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteProfileImageImpl>
    implements _$$DeleteProfileImageImplCopyWith<$Res> {
  __$$DeleteProfileImageImplCopyWithImpl(_$DeleteProfileImageImpl _value,
      $Res Function(_$DeleteProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$DeleteProfileImageImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeleteProfileImageImpl implements DeleteProfileImage {
  const _$DeleteProfileImageImpl(this.userId);

  @override
  final int? userId;

  @override
  String toString() {
    return 'ProfileEvent.deleteProfileImage(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProfileImageImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProfileImageImplCopyWith<_$DeleteProfileImageImpl> get copyWith =>
      __$$DeleteProfileImageImplCopyWithImpl<_$DeleteProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) started,
    required TResult Function(int userId) clickedSubscribeButton,
    required TResult Function() signOut,
    required TResult Function(int? userId, String imageToBase) addProfileImage,
    required TResult Function(int? userId) deleteProfileImage,
  }) {
    return deleteProfileImage(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? started,
    TResult? Function(int userId)? clickedSubscribeButton,
    TResult? Function()? signOut,
    TResult? Function(int? userId, String imageToBase)? addProfileImage,
    TResult? Function(int? userId)? deleteProfileImage,
  }) {
    return deleteProfileImage?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? started,
    TResult Function(int userId)? clickedSubscribeButton,
    TResult Function()? signOut,
    TResult Function(int? userId, String imageToBase)? addProfileImage,
    TResult Function(int? userId)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (deleteProfileImage != null) {
      return deleteProfileImage(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ClickedSubscribeButton value)
        clickedSubscribeButton,
    required TResult Function(SignOut value) signOut,
    required TResult Function(AddProfileImage value) addProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
  }) {
    return deleteProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(AddProfileImage value)? addProfileImage,
    TResult? Function(DeleteProfileImage value)? deleteProfileImage,
  }) {
    return deleteProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ClickedSubscribeButton value)? clickedSubscribeButton,
    TResult Function(SignOut value)? signOut,
    TResult Function(AddProfileImage value)? addProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    required TResult orElse(),
  }) {
    if (deleteProfileImage != null) {
      return deleteProfileImage(this);
    }
    return orElse();
  }
}

abstract class DeleteProfileImage implements ProfileEvent {
  const factory DeleteProfileImage(final int? userId) =
      _$DeleteProfileImageImpl;

  int? get userId;
  @JsonKey(ignore: true)
  _$$DeleteProfileImageImplCopyWith<_$DeleteProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function() loading,
    required TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProfileState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {User currentUser,
      bool isMyProfile,
      bool isSubscribed,
      List<Receipt> receipts,
      int subscribersCount,
      int subscriptionsCount,
      int favouritesCount});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? isMyProfile = null,
    Object? isSubscribed = null,
    Object? receipts = null,
    Object? subscribersCount = null,
    Object? subscriptionsCount = null,
    Object? favouritesCount = null,
  }) {
    return _then(_$LoadedImpl(
      null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      null == isMyProfile
          ? _value.isMyProfile
          : isMyProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      null == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == subscriptionsCount
          ? _value.subscriptionsCount
          : subscriptionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      this.currentUser,
      this.isMyProfile,
      this.isSubscribed,
      final List<Receipt> receipts,
      this.subscribersCount,
      this.subscriptionsCount,
      this.favouritesCount)
      : _receipts = receipts;

  @override
  final User currentUser;
  @override
  final bool isMyProfile;
  @override
  final bool isSubscribed;
  final List<Receipt> _receipts;
  @override
  List<Receipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  final int subscribersCount;
  @override
  final int subscriptionsCount;
  @override
  final int favouritesCount;

  @override
  String toString() {
    return 'ProfileState.loaded(currentUser: $currentUser, isMyProfile: $isMyProfile, isSubscribed: $isSubscribed, receipts: $receipts, subscribersCount: $subscribersCount, subscriptionsCount: $subscriptionsCount, favouritesCount: $favouritesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.isMyProfile, isMyProfile) ||
                other.isMyProfile == isMyProfile) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscriptionsCount, subscriptionsCount) ||
                other.subscriptionsCount == subscriptionsCount) &&
            (identical(other.favouritesCount, favouritesCount) ||
                other.favouritesCount == favouritesCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentUser,
      isMyProfile,
      isSubscribed,
      const DeepCollectionEquality().hash(_receipts),
      subscribersCount,
      subscriptionsCount,
      favouritesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)
        loaded,
  }) {
    return loaded(currentUser, isMyProfile, isSubscribed, receipts,
        subscribersCount, subscriptionsCount, favouritesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
  }) {
    return loaded?.call(currentUser, isMyProfile, isSubscribed, receipts,
        subscribersCount, subscriptionsCount, favouritesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            User currentUser,
            bool isMyProfile,
            bool isSubscribed,
            List<Receipt> receipts,
            int subscribersCount,
            int subscriptionsCount,
            int favouritesCount)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentUser, isMyProfile, isSubscribed, receipts,
          subscribersCount, subscriptionsCount, favouritesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ProfileState {
  const factory Loaded(
      final User currentUser,
      final bool isMyProfile,
      final bool isSubscribed,
      final List<Receipt> receipts,
      final int subscribersCount,
      final int subscriptionsCount,
      final int favouritesCount) = _$LoadedImpl;

  User get currentUser;
  bool get isMyProfile;
  bool get isSubscribed;
  List<Receipt> get receipts;
  int get subscribersCount;
  int get subscriptionsCount;
  int get favouritesCount;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCommandCopyWith<$Res> {
  factory $ProfileCommandCopyWith(
          ProfileCommand value, $Res Function(ProfileCommand) then) =
      _$ProfileCommandCopyWithImpl<$Res, ProfileCommand>;
}

/// @nodoc
class _$ProfileCommandCopyWithImpl<$Res, $Val extends ProfileCommand>
    implements $ProfileCommandCopyWith<$Res> {
  _$ProfileCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToSubscribersImplCopyWith<$Res> {
  factory _$$NavToSubscribersImplCopyWith(_$NavToSubscribersImpl value,
          $Res Function(_$NavToSubscribersImpl) then) =
      __$$NavToSubscribersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToSubscribersImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$NavToSubscribersImpl>
    implements _$$NavToSubscribersImplCopyWith<$Res> {
  __$$NavToSubscribersImplCopyWithImpl(_$NavToSubscribersImpl _value,
      $Res Function(_$NavToSubscribersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToSubscribersImpl implements NavToSubscribers {
  const _$NavToSubscribersImpl();

  @override
  String toString() {
    return 'ProfileCommand.navToSubscribers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToSubscribersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return navToSubscribers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return navToSubscribers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (navToSubscribers != null) {
      return navToSubscribers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return navToSubscribers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return navToSubscribers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (navToSubscribers != null) {
      return navToSubscribers(this);
    }
    return orElse();
  }
}

abstract class NavToSubscribers implements ProfileCommand {
  const factory NavToSubscribers() = _$NavToSubscribersImpl;
}

/// @nodoc
abstract class _$$NavToSubscriptionsImplCopyWith<$Res> {
  factory _$$NavToSubscriptionsImplCopyWith(_$NavToSubscriptionsImpl value,
          $Res Function(_$NavToSubscriptionsImpl) then) =
      __$$NavToSubscriptionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToSubscriptionsImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$NavToSubscriptionsImpl>
    implements _$$NavToSubscriptionsImplCopyWith<$Res> {
  __$$NavToSubscriptionsImplCopyWithImpl(_$NavToSubscriptionsImpl _value,
      $Res Function(_$NavToSubscriptionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToSubscriptionsImpl implements NavToSubscriptions {
  const _$NavToSubscriptionsImpl();

  @override
  String toString() {
    return 'ProfileCommand.navToSubscriptions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToSubscriptionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return navToSubscriptions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return navToSubscriptions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (navToSubscriptions != null) {
      return navToSubscriptions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return navToSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return navToSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (navToSubscriptions != null) {
      return navToSubscriptions(this);
    }
    return orElse();
  }
}

abstract class NavToSubscriptions implements ProfileCommand {
  const factory NavToSubscriptions() = _$NavToSubscriptionsImpl;
}

/// @nodoc
abstract class _$$NavToEditProfileImplCopyWith<$Res> {
  factory _$$NavToEditProfileImplCopyWith(_$NavToEditProfileImpl value,
          $Res Function(_$NavToEditProfileImpl) then) =
      __$$NavToEditProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToEditProfileImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$NavToEditProfileImpl>
    implements _$$NavToEditProfileImplCopyWith<$Res> {
  __$$NavToEditProfileImplCopyWithImpl(_$NavToEditProfileImpl _value,
      $Res Function(_$NavToEditProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToEditProfileImpl implements NavToEditProfile {
  const _$NavToEditProfileImpl();

  @override
  String toString() {
    return 'ProfileCommand.navToEditProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToEditProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return navToEditProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return navToEditProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (navToEditProfile != null) {
      return navToEditProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return navToEditProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return navToEditProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (navToEditProfile != null) {
      return navToEditProfile(this);
    }
    return orElse();
  }
}

abstract class NavToEditProfile implements ProfileCommand {
  const factory NavToEditProfile() = _$NavToEditProfileImpl;
}

/// @nodoc
abstract class _$$NavToFavouritesImplCopyWith<$Res> {
  factory _$$NavToFavouritesImplCopyWith(_$NavToFavouritesImpl value,
          $Res Function(_$NavToFavouritesImpl) then) =
      __$$NavToFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToFavouritesImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$NavToFavouritesImpl>
    implements _$$NavToFavouritesImplCopyWith<$Res> {
  __$$NavToFavouritesImplCopyWithImpl(
      _$NavToFavouritesImpl _value, $Res Function(_$NavToFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToFavouritesImpl implements NavToFavourites {
  const _$NavToFavouritesImpl();

  @override
  String toString() {
    return 'ProfileCommand.navToFavourites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return navToFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return navToFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (navToFavourites != null) {
      return navToFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return navToFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return navToFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (navToFavourites != null) {
      return navToFavourites(this);
    }
    return orElse();
  }
}

abstract class NavToFavourites implements ProfileCommand {
  const factory NavToFavourites() = _$NavToFavouritesImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String textError});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textError = null,
  }) {
    return _then(_$ErrorImpl(
      null == textError
          ? _value.textError
          : textError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.textError);

  @override
  final String textError;

  @override
  String toString() {
    return 'ProfileCommand.error(textError: $textError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.textError, textError) ||
                other.textError == textError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return error(textError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return error?.call(textError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(textError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ProfileCommand {
  const factory Error(final String textError) = _$ErrorImpl;

  String get textError;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavToSplashImplCopyWith<$Res> {
  factory _$$NavToSplashImplCopyWith(
          _$NavToSplashImpl value, $Res Function(_$NavToSplashImpl) then) =
      __$$NavToSplashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToSplashImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$NavToSplashImpl>
    implements _$$NavToSplashImplCopyWith<$Res> {
  __$$NavToSplashImplCopyWithImpl(
      _$NavToSplashImpl _value, $Res Function(_$NavToSplashImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToSplashImpl implements NavToSplash {
  const _$NavToSplashImpl();

  @override
  String toString() {
    return 'ProfileCommand.navToSplash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToSplashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return navToSplash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return navToSplash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (navToSplash != null) {
      return navToSplash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return navToSplash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return navToSplash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (navToSplash != null) {
      return navToSplash(this);
    }
    return orElse();
  }
}

abstract class NavToSplash implements ProfileCommand {
  const factory NavToSplash() = _$NavToSplashImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImpl implements Add {
  const _$AddImpl();

  @override
  String toString() {
    return 'ProfileCommand.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements ProfileCommand {
  const factory Add() = _$AddImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$ProfileCommandCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteImpl implements Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'ProfileCommand.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToSubscribers,
    required TResult Function() navToSubscriptions,
    required TResult Function() navToEditProfile,
    required TResult Function() navToFavourites,
    required TResult Function(String textError) error,
    required TResult Function() navToSplash,
    required TResult Function() add,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToSubscribers,
    TResult? Function()? navToSubscriptions,
    TResult? Function()? navToEditProfile,
    TResult? Function()? navToFavourites,
    TResult? Function(String textError)? error,
    TResult? Function()? navToSplash,
    TResult? Function()? add,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToSubscribers,
    TResult Function()? navToSubscriptions,
    TResult Function()? navToEditProfile,
    TResult Function()? navToFavourites,
    TResult Function(String textError)? error,
    TResult Function()? navToSplash,
    TResult Function()? add,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToSubscribers value) navToSubscribers,
    required TResult Function(NavToSubscriptions value) navToSubscriptions,
    required TResult Function(NavToEditProfile value) navToEditProfile,
    required TResult Function(NavToFavourites value) navToFavourites,
    required TResult Function(Error value) error,
    required TResult Function(NavToSplash value) navToSplash,
    required TResult Function(Add value) add,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToSubscribers value)? navToSubscribers,
    TResult? Function(NavToSubscriptions value)? navToSubscriptions,
    TResult? Function(NavToEditProfile value)? navToEditProfile,
    TResult? Function(NavToFavourites value)? navToFavourites,
    TResult? Function(Error value)? error,
    TResult? Function(NavToSplash value)? navToSplash,
    TResult? Function(Add value)? add,
    TResult? Function(Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToSubscribers value)? navToSubscribers,
    TResult Function(NavToSubscriptions value)? navToSubscriptions,
    TResult Function(NavToEditProfile value)? navToEditProfile,
    TResult Function(NavToFavourites value)? navToFavourites,
    TResult Function(Error value)? error,
    TResult Function(NavToSplash value)? navToSplash,
    TResult Function(Add value)? add,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ProfileCommand {
  const factory Delete() = _$DeleteImpl;
}
