import 'package:dio/dio.dart';
import 'package:pokemon/base/urls.dart';
import 'package:pokemon/client/api_errors/bad_network_api_error.dart';
import 'package:pokemon/client/api_errors/exceptions.dart';
import 'package:pokemon/client/api_errors/internal_server_api_error.dart';
import 'package:pokemon/client/interceptors/bad_network_error_interceptor.dart';
import 'package:pokemon/client/interceptors/internal_server_error_interceptor.dart';

class ApiClient {
  final Dio dio;
  CancelToken token = CancelToken();

  ApiClient(this.dio) {
    dio.options.baseUrl = URL_POKEAPI;
    dio.options.connectTimeout = const Duration(minutes: 1).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 1).inMilliseconds;
    dio.interceptors.add(BadNetworkErrorInterceptor());
    dio.interceptors.add(InternalServerErrorInterceptor());

    //if (Env.data.debugApiClient) {
    //  dio.interceptors.add(PrettyDioLogger(
    //    requestHeader: true,
    //    requestBody: true,
    //    responseHeader: true,
    //    responseBody: true,
    //    error: true,
    //    compact: true,
    //  ));
    //}
  }

  Future<Response> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await dio.post(path, data: data, cancelToken: token);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data, cancelToken: token);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await dio.delete(path, cancelToken: token);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> get(String path) async {
    try {
      return await dio.get(path, cancelToken: token);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on DioError {
      throw ApiException();
    }
  }

  Future<bool> cancelRequests() async {
    if (!token.isCancelled) {
      token.cancel();
      return true;
    } else {
      return false;
    }
  }
}
