import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../models/api/api_response.dart';
import 'api.dart';
import 'base_api_impl.dart';

class BaseAPI implements BaseAPIImpl {
  Dio? _dio;
  final endpoint = Api();

  BaseAPI() {
    _dio = Dio();

    if (kDebugMode) {
      _dio?.interceptors.add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }
  }
  Future<Options> _getHeaders({bool? useToken, String? token, bool? useFormData = false}) async {
    var header = <String, dynamic>{};
    header['Accept'] = 'application/json';
    header['Content-Type'] = useFormData == true ? 'multipart/form-data' : 'application/json';
    if (useToken == true) {
      header['Authorization'] = "Bearer $token";
    }
    return Options(headers: header, sendTimeout: 60 * 1000, receiveTimeout: 60 * 1000);
  }

  @override
  Future<APIResponse> delete(String url, {Map<String, dynamic>? param, bool? useToken}) async {
    try {
      final result = await _dio?.delete(url, options: await _getHeaders(useToken: useToken), queryParameters: param);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(e.response?.data['message'] ?? e.response?.data['error'] ?? e.message, e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> get(String url, {Map<String, dynamic>? param, bool? useToken, String? token, CancelToken? cancelToken}) async {
    try {
      final result = await _dio?.get(url, options: await _getHeaders(useToken: useToken, token: token), queryParameters: param, cancelToken: cancelToken);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(e.response?.data['message'] ?? e.response?.data['error'] ?? e.message, e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> post(String url, {Map<String, dynamic>? param, data, bool? useToken, bool useFormData = false}) async {
    try {
      final result = await _dio?.post(url, options: await _getHeaders(useToken: useToken, useFormData: useFormData), data: data != null ? (useFormData ? FormData.fromMap(data) : data) : null);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(e.response?.data['message'] ?? e.response?.data['error'] ?? e.message, e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> put(String url, {Map<String, dynamic>? param, data, bool? useToken}) async {
    try {
      final result = await _dio?.put(url, options: await _getHeaders(useToken: useToken), data: data, queryParameters: param);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(e.response?.data['message'] ?? e.response?.data['error'] ?? e.message, e.response?.statusCode ?? 0);
    }
  }

  void validateUnauthorized(int? statusCode, String url) async {
    //
  }

  Future<APIResponse> _parseResponse(Response? response) async {
    return APIResponse.fromJson({
      'statusCode': response?.statusCode,
      'data': response?.data,
      'message': response?.statusMessage,
    });
  }
}
