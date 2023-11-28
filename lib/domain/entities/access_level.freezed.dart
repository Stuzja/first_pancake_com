// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessLevel _$AccessLevelFromJson(Map<String, dynamic> json) {
  return _AccessLevel.fromJson(json);
}

/// @nodoc
mixin _$AccessLevel {
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessLevelCopyWith<AccessLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessLevelCopyWith<$Res> {
  factory $AccessLevelCopyWith(
          AccessLevel value, $Res Function(AccessLevel) then) =
      _$AccessLevelCopyWithImpl<$Res, AccessLevel>;
  @useResult
  $Res call({int level});
}

/// @nodoc
class _$AccessLevelCopyWithImpl<$Res, $Val extends AccessLevel>
    implements $AccessLevelCopyWith<$Res> {
  _$AccessLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessLevelCopyWith<$Res>
    implements $AccessLevelCopyWith<$Res> {
  factory _$$_AccessLevelCopyWith(
          _$_AccessLevel value, $Res Function(_$_AccessLevel) then) =
      __$$_AccessLevelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level});
}

/// @nodoc
class __$$_AccessLevelCopyWithImpl<$Res>
    extends _$AccessLevelCopyWithImpl<$Res, _$_AccessLevel>
    implements _$$_AccessLevelCopyWith<$Res> {
  __$$_AccessLevelCopyWithImpl(
      _$_AccessLevel _value, $Res Function(_$_AccessLevel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$_AccessLevel(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessLevel implements _AccessLevel {
  const _$_AccessLevel({required this.level});

  factory _$_AccessLevel.fromJson(Map<String, dynamic> json) =>
      _$$_AccessLevelFromJson(json);

  @override
  final int level;

  @override
  String toString() {
    return 'AccessLevel(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessLevel &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessLevelCopyWith<_$_AccessLevel> get copyWith =>
      __$$_AccessLevelCopyWithImpl<_$_AccessLevel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessLevelToJson(
      this,
    );
  }
}

abstract class _AccessLevel implements AccessLevel {
  const factory _AccessLevel({required final int level}) = _$_AccessLevel;

  factory _AccessLevel.fromJson(Map<String, dynamic> json) =
      _$_AccessLevel.fromJson;

  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$_AccessLevelCopyWith<_$_AccessLevel> get copyWith =>
      throw _privateConstructorUsedError;
}
