import 'package:connection_verify/connection_verify.dart';
import 'package:dio/dio.dart';
import 'package:pokemon/client/api_errors/bad_network_api_error.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    return options;
  }

  @override
  Future onError(DioError error) async {
    var isConnected = await ConnectionVerify.connectionStatus();
    if (error.response == null && !isConnected) {
      return BadNetworkApiError();
    }

    return null;
  }
}
