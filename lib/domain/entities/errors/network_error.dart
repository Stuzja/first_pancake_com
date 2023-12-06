import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const factory NetworkError({
    required int statusCode,
    required String title,
  }) = _NetworkError;
}
