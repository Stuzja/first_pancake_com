import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_level.freezed.dart';

part 'access_level.g.dart';

@freezed
class AccessLevel with _$AccessLevel {
  const factory AccessLevel({
    required int level,
  }) = _AccessLevel;

  factory AccessLevel.fromJson(Map<String, dynamic> json) =>
      _$AccessLevelFromJson(json);
}
