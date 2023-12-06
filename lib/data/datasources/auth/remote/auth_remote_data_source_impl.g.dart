// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_remote_data_source_impl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AuthDataSourceImpl implements AuthDataSourceImpl {
  _AuthDataSourceImpl(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ReceiptTokenDto> registration(regDto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = regDto;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ReceiptTokenDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/registration',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ReceiptTokenDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ReceiptTokenDto> login(
    content_type,
    loginDto,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Content-Type': content_type};
    _headers.removeWhere((k, v) => v == null);
    final _data = loginDto;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ReceiptTokenDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: content_type,
    )
            .compose(
              _dio.options,
              '/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ReceiptTokenDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
