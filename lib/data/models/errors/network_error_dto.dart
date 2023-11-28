import 'package:first_pancake_com/domain/entities/errors/network_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error_dto.freezed.dart';

part 'network_error_dto.g.dart';

@freezed
class NetworkErrorDto with _$NetworkErrorDto {
  const factory NetworkErrorDto({
    required int statusCode,
    required String title,
  }) = _NetworkErrorDto;

  factory NetworkErrorDto.fromJson(Map<String, dynamic> json) =>
      _$NetworkErrorDtoFromJson(json);
}

extension NetworkErrorMapper on NetworkErrorDto {
  NetworkError toModel() {
    return NetworkError(
      statusCode: statusCode,
      title: title,
    );
  }

  static NetworkErrorDto fromModel(NetworkError error) {
    return NetworkErrorDto(
      title: error.title,

      statusCode: error.statusCode,
    );
  }
}