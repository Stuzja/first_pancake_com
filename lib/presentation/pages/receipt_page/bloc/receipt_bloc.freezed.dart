// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiptEvent {
  int get receiptId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int receiptId) started,
    required TResult Function(int receiptId) addToFavorites,
    required TResult Function(int receiptId) deleteFromFavorites,
    required TResult Function(int receiptId) deleteReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int receiptId)? started,
    TResult? Function(int receiptId)? addToFavorites,
    TResult? Function(int receiptId)? deleteFromFavorites,
    TResult? Function(int receiptId)? deleteReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int receiptId)? started,
    TResult Function(int receiptId)? addToFavorites,
    TResult Function(int receiptId)? deleteFromFavorites,
    TResult Function(int receiptId)? deleteReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(DeleteFromFavorites value) deleteFromFavorites,
    required TResult Function(DeleteReceipt value) deleteReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult? Function(DeleteReceipt value)? deleteReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult Function(DeleteReceipt value)? deleteReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptEventCopyWith<ReceiptEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptEventCopyWith<$Res> {
  factory $ReceiptEventCopyWith(
          ReceiptEvent value, $Res Function(ReceiptEvent) then) =
      _$ReceiptEventCopyWithImpl<$Res, ReceiptEvent>;
  @useResult
  $Res call({int receiptId});
}

/// @nodoc
class _$ReceiptEventCopyWithImpl<$Res, $Val extends ReceiptEvent>
    implements $ReceiptEventCopyWith<$Res> {
  _$ReceiptEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
  }) {
    return _then(_value.copyWith(
      receiptId: null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $ReceiptEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int receiptId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ReceiptEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
  }) {
    return _then(_$StartedImpl(
      null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl(this.receiptId);

  @override
  final int receiptId;

  @override
  String toString() {
    return 'ReceiptEvent.started(receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int receiptId) started,
    required TResult Function(int receiptId) addToFavorites,
    required TResult Function(int receiptId) deleteFromFavorites,
    required TResult Function(int receiptId) deleteReceipt,
  }) {
    return started(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int receiptId)? started,
    TResult? Function(int receiptId)? addToFavorites,
    TResult? Function(int receiptId)? deleteFromFavorites,
    TResult? Function(int receiptId)? deleteReceipt,
  }) {
    return started?.call(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int receiptId)? started,
    TResult Function(int receiptId)? addToFavorites,
    TResult Function(int receiptId)? deleteFromFavorites,
    TResult Function(int receiptId)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(receiptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(DeleteFromFavorites value) deleteFromFavorites,
    required TResult Function(DeleteReceipt value) deleteReceipt,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult? Function(DeleteReceipt value)? deleteReceipt,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult Function(DeleteReceipt value)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ReceiptEvent {
  const factory Started(final int receiptId) = _$StartedImpl;

  @override
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavoritesImplCopyWith<$Res>
    implements $ReceiptEventCopyWith<$Res> {
  factory _$$AddToFavoritesImplCopyWith(_$AddToFavoritesImpl value,
          $Res Function(_$AddToFavoritesImpl) then) =
      __$$AddToFavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int receiptId});
}

/// @nodoc
class __$$AddToFavoritesImplCopyWithImpl<$Res>
    extends _$ReceiptEventCopyWithImpl<$Res, _$AddToFavoritesImpl>
    implements _$$AddToFavoritesImplCopyWith<$Res> {
  __$$AddToFavoritesImplCopyWithImpl(
      _$AddToFavoritesImpl _value, $Res Function(_$AddToFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
  }) {
    return _then(_$AddToFavoritesImpl(
      null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToFavoritesImpl implements AddToFavorites {
  const _$AddToFavoritesImpl(this.receiptId);

  @override
  final int receiptId;

  @override
  String toString() {
    return 'ReceiptEvent.addToFavorites(receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoritesImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      __$$AddToFavoritesImplCopyWithImpl<_$AddToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int receiptId) started,
    required TResult Function(int receiptId) addToFavorites,
    required TResult Function(int receiptId) deleteFromFavorites,
    required TResult Function(int receiptId) deleteReceipt,
  }) {
    return addToFavorites(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int receiptId)? started,
    TResult? Function(int receiptId)? addToFavorites,
    TResult? Function(int receiptId)? deleteFromFavorites,
    TResult? Function(int receiptId)? deleteReceipt,
  }) {
    return addToFavorites?.call(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int receiptId)? started,
    TResult Function(int receiptId)? addToFavorites,
    TResult Function(int receiptId)? deleteFromFavorites,
    TResult Function(int receiptId)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(receiptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(DeleteFromFavorites value) deleteFromFavorites,
    required TResult Function(DeleteReceipt value) deleteReceipt,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult? Function(DeleteReceipt value)? deleteReceipt,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult Function(DeleteReceipt value)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class AddToFavorites implements ReceiptEvent {
  const factory AddToFavorites(final int receiptId) = _$AddToFavoritesImpl;

  @override
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFromFavoritesImplCopyWith<$Res>
    implements $ReceiptEventCopyWith<$Res> {
  factory _$$DeleteFromFavoritesImplCopyWith(_$DeleteFromFavoritesImpl value,
          $Res Function(_$DeleteFromFavoritesImpl) then) =
      __$$DeleteFromFavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int receiptId});
}

/// @nodoc
class __$$DeleteFromFavoritesImplCopyWithImpl<$Res>
    extends _$ReceiptEventCopyWithImpl<$Res, _$DeleteFromFavoritesImpl>
    implements _$$DeleteFromFavoritesImplCopyWith<$Res> {
  __$$DeleteFromFavoritesImplCopyWithImpl(_$DeleteFromFavoritesImpl _value,
      $Res Function(_$DeleteFromFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
  }) {
    return _then(_$DeleteFromFavoritesImpl(
      null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFromFavoritesImpl implements DeleteFromFavorites {
  const _$DeleteFromFavoritesImpl(this.receiptId);

  @override
  final int receiptId;

  @override
  String toString() {
    return 'ReceiptEvent.deleteFromFavorites(receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFromFavoritesImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFromFavoritesImplCopyWith<_$DeleteFromFavoritesImpl> get copyWith =>
      __$$DeleteFromFavoritesImplCopyWithImpl<_$DeleteFromFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int receiptId) started,
    required TResult Function(int receiptId) addToFavorites,
    required TResult Function(int receiptId) deleteFromFavorites,
    required TResult Function(int receiptId) deleteReceipt,
  }) {
    return deleteFromFavorites(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int receiptId)? started,
    TResult? Function(int receiptId)? addToFavorites,
    TResult? Function(int receiptId)? deleteFromFavorites,
    TResult? Function(int receiptId)? deleteReceipt,
  }) {
    return deleteFromFavorites?.call(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int receiptId)? started,
    TResult Function(int receiptId)? addToFavorites,
    TResult Function(int receiptId)? deleteFromFavorites,
    TResult Function(int receiptId)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (deleteFromFavorites != null) {
      return deleteFromFavorites(receiptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(DeleteFromFavorites value) deleteFromFavorites,
    required TResult Function(DeleteReceipt value) deleteReceipt,
  }) {
    return deleteFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult? Function(DeleteReceipt value)? deleteReceipt,
  }) {
    return deleteFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult Function(DeleteReceipt value)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (deleteFromFavorites != null) {
      return deleteFromFavorites(this);
    }
    return orElse();
  }
}

abstract class DeleteFromFavorites implements ReceiptEvent {
  const factory DeleteFromFavorites(final int receiptId) =
      _$DeleteFromFavoritesImpl;

  @override
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteFromFavoritesImplCopyWith<_$DeleteFromFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteReceiptImplCopyWith<$Res>
    implements $ReceiptEventCopyWith<$Res> {
  factory _$$DeleteReceiptImplCopyWith(
          _$DeleteReceiptImpl value, $Res Function(_$DeleteReceiptImpl) then) =
      __$$DeleteReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int receiptId});
}

/// @nodoc
class __$$DeleteReceiptImplCopyWithImpl<$Res>
    extends _$ReceiptEventCopyWithImpl<$Res, _$DeleteReceiptImpl>
    implements _$$DeleteReceiptImplCopyWith<$Res> {
  __$$DeleteReceiptImplCopyWithImpl(
      _$DeleteReceiptImpl _value, $Res Function(_$DeleteReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
  }) {
    return _then(_$DeleteReceiptImpl(
      null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteReceiptImpl implements DeleteReceipt {
  const _$DeleteReceiptImpl(this.receiptId);

  @override
  final int receiptId;

  @override
  String toString() {
    return 'ReceiptEvent.deleteReceipt(receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReceiptImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReceiptImplCopyWith<_$DeleteReceiptImpl> get copyWith =>
      __$$DeleteReceiptImplCopyWithImpl<_$DeleteReceiptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int receiptId) started,
    required TResult Function(int receiptId) addToFavorites,
    required TResult Function(int receiptId) deleteFromFavorites,
    required TResult Function(int receiptId) deleteReceipt,
  }) {
    return deleteReceipt(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int receiptId)? started,
    TResult? Function(int receiptId)? addToFavorites,
    TResult? Function(int receiptId)? deleteFromFavorites,
    TResult? Function(int receiptId)? deleteReceipt,
  }) {
    return deleteReceipt?.call(receiptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int receiptId)? started,
    TResult Function(int receiptId)? addToFavorites,
    TResult Function(int receiptId)? deleteFromFavorites,
    TResult Function(int receiptId)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (deleteReceipt != null) {
      return deleteReceipt(receiptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddToFavorites value) addToFavorites,
    required TResult Function(DeleteFromFavorites value) deleteFromFavorites,
    required TResult Function(DeleteReceipt value) deleteReceipt,
  }) {
    return deleteReceipt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddToFavorites value)? addToFavorites,
    TResult? Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult? Function(DeleteReceipt value)? deleteReceipt,
  }) {
    return deleteReceipt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddToFavorites value)? addToFavorites,
    TResult Function(DeleteFromFavorites value)? deleteFromFavorites,
    TResult Function(DeleteReceipt value)? deleteReceipt,
    required TResult orElse(),
  }) {
    if (deleteReceipt != null) {
      return deleteReceipt(this);
    }
    return orElse();
  }
}

abstract class DeleteReceipt implements ReceiptEvent {
  const factory DeleteReceipt(final int receiptId) = _$DeleteReceiptImpl;

  @override
  int get receiptId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteReceiptImplCopyWith<_$DeleteReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Receipt receipt, bool isFavourite, bool isMine)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
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
abstract class $ReceiptStateCopyWith<$Res> {
  factory $ReceiptStateCopyWith(
          ReceiptState value, $Res Function(ReceiptState) then) =
      _$ReceiptStateCopyWithImpl<$Res, ReceiptState>;
}

/// @nodoc
class _$ReceiptStateCopyWithImpl<$Res, $Val extends ReceiptState>
    implements $ReceiptStateCopyWith<$Res> {
  _$ReceiptStateCopyWithImpl(this._value, this._then);

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
    extends _$ReceiptStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ReceiptState.initial()';
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
    required TResult Function(Receipt receipt, bool isFavourite, bool isMine)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
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

abstract class Initial implements ReceiptState {
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
    extends _$ReceiptStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ReceiptState.loading()';
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
    required TResult Function(Receipt receipt, bool isFavourite, bool isMine)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
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

abstract class Loading implements ReceiptState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Receipt receipt, bool isFavourite, bool isMine});

  $ReceiptCopyWith<$Res> get receipt;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt = null,
    Object? isFavourite = null,
    Object? isMine = null,
  }) {
    return _then(_$LoadedImpl(
      receipt: null == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as Receipt,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiptCopyWith<$Res> get receipt {
    return $ReceiptCopyWith<$Res>(_value.receipt, (value) {
      return _then(_value.copyWith(receipt: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {required this.receipt, required this.isFavourite, required this.isMine});

  @override
  final Receipt receipt;
  @override
  final bool isFavourite;
  @override
  final bool isMine;

  @override
  String toString() {
    return 'ReceiptState.loaded(receipt: $receipt, isFavourite: $isFavourite, isMine: $isMine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.isMine, isMine) || other.isMine == isMine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receipt, isFavourite, isMine);

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
    required TResult Function(Receipt receipt, bool isFavourite, bool isMine)
        loaded,
  }) {
    return loaded(receipt, isFavourite, isMine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
  }) {
    return loaded?.call(receipt, isFavourite, isMine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Receipt receipt, bool isFavourite, bool isMine)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(receipt, isFavourite, isMine);
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

abstract class Loaded implements ReceiptState {
  const factory Loaded(
      {required final Receipt receipt,
      required final bool isFavourite,
      required final bool isMine}) = _$LoadedImpl;

  Receipt get receipt;
  bool get isFavourite;
  bool get isMine;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiptCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() favorite,
    required TResult Function() notFavorite,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? favorite,
    TResult? Function()? notFavorite,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? favorite,
    TResult Function()? notFavorite,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Favorite value) favorite,
    required TResult Function(NotFavorite value) notFavorite,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error value)? error,
    TResult? Function(Favorite value)? favorite,
    TResult? Function(NotFavorite value)? notFavorite,
    TResult? Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Favorite value)? favorite,
    TResult Function(NotFavorite value)? notFavorite,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCommandCopyWith<$Res> {
  factory $ReceiptCommandCopyWith(
          ReceiptCommand value, $Res Function(ReceiptCommand) then) =
      _$ReceiptCommandCopyWithImpl<$Res, ReceiptCommand>;
}

/// @nodoc
class _$ReceiptCommandCopyWithImpl<$Res, $Val extends ReceiptCommand>
    implements $ReceiptCommandCopyWith<$Res> {
  _$ReceiptCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ReceiptCommandCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ReceiptCommand.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() favorite,
    required TResult Function() notFavorite,
    required TResult Function() deleted,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? favorite,
    TResult? Function()? notFavorite,
    TResult? Function()? deleted,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? favorite,
    TResult Function()? notFavorite,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Favorite value) favorite,
    required TResult Function(NotFavorite value) notFavorite,
    required TResult Function(Deleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error value)? error,
    TResult? Function(Favorite value)? favorite,
    TResult? Function(NotFavorite value)? notFavorite,
    TResult? Function(Deleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Favorite value)? favorite,
    TResult Function(NotFavorite value)? notFavorite,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ReceiptCommand {
  const factory Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$FavoriteImplCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$ReceiptCommandCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteImpl implements Favorite {
  const _$FavoriteImpl();

  @override
  String toString() {
    return 'ReceiptCommand.favorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() favorite,
    required TResult Function() notFavorite,
    required TResult Function() deleted,
  }) {
    return favorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? favorite,
    TResult? Function()? notFavorite,
    TResult? Function()? deleted,
  }) {
    return favorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? favorite,
    TResult Function()? notFavorite,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Favorite value) favorite,
    required TResult Function(NotFavorite value) notFavorite,
    required TResult Function(Deleted value) deleted,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error value)? error,
    TResult? Function(Favorite value)? favorite,
    TResult? Function(NotFavorite value)? notFavorite,
    TResult? Function(Deleted value)? deleted,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Favorite value)? favorite,
    TResult Function(NotFavorite value)? notFavorite,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class Favorite implements ReceiptCommand {
  const factory Favorite() = _$FavoriteImpl;
}

/// @nodoc
abstract class _$$NotFavoriteImplCopyWith<$Res> {
  factory _$$NotFavoriteImplCopyWith(
          _$NotFavoriteImpl value, $Res Function(_$NotFavoriteImpl) then) =
      __$$NotFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFavoriteImplCopyWithImpl<$Res>
    extends _$ReceiptCommandCopyWithImpl<$Res, _$NotFavoriteImpl>
    implements _$$NotFavoriteImplCopyWith<$Res> {
  __$$NotFavoriteImplCopyWithImpl(
      _$NotFavoriteImpl _value, $Res Function(_$NotFavoriteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFavoriteImpl implements NotFavorite {
  const _$NotFavoriteImpl();

  @override
  String toString() {
    return 'ReceiptCommand.notFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() favorite,
    required TResult Function() notFavorite,
    required TResult Function() deleted,
  }) {
    return notFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? favorite,
    TResult? Function()? notFavorite,
    TResult? Function()? deleted,
  }) {
    return notFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? favorite,
    TResult Function()? notFavorite,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (notFavorite != null) {
      return notFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Favorite value) favorite,
    required TResult Function(NotFavorite value) notFavorite,
    required TResult Function(Deleted value) deleted,
  }) {
    return notFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error value)? error,
    TResult? Function(Favorite value)? favorite,
    TResult? Function(NotFavorite value)? notFavorite,
    TResult? Function(Deleted value)? deleted,
  }) {
    return notFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Favorite value)? favorite,
    TResult Function(NotFavorite value)? notFavorite,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (notFavorite != null) {
      return notFavorite(this);
    }
    return orElse();
  }
}

abstract class NotFavorite implements ReceiptCommand {
  const factory NotFavorite() = _$NotFavoriteImpl;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$ReceiptCommandCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedImpl implements Deleted {
  const _$DeletedImpl();

  @override
  String toString() {
    return 'ReceiptCommand.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() favorite,
    required TResult Function() notFavorite,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? favorite,
    TResult? Function()? notFavorite,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? favorite,
    TResult Function()? notFavorite,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Favorite value) favorite,
    required TResult Function(NotFavorite value) notFavorite,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error value)? error,
    TResult? Function(Favorite value)? favorite,
    TResult? Function(NotFavorite value)? notFavorite,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Favorite value)? favorite,
    TResult Function(NotFavorite value)? notFavorite,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements ReceiptCommand {
  const factory Deleted() = _$DeletedImpl;
}
