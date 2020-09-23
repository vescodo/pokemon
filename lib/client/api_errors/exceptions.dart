import 'package:meta/meta.dart';
import 'package:pokemon/client/api_errors/errors.dart';

class CacheException implements Exception {}

class ApiException implements Exception {}

class BadNetworkException implements Exception {}

class InternalServerException implements Exception {}

class UnauthenticatedException implements Exception {}

class ApiErrorMessageException implements Exception {
  final String errorMessage;

  ApiErrorMessageException({@required this.errorMessage});
}

class ExceptionHelper implements Exception {
  String getErrorMessage(Exception exception) {
    String _body;

    if (exception is BadNetworkException) {
      _body = Errors.BAD_NETWORK_MESSAGE;
    } else if (exception is UnauthenticatedException) {
      _body = Errors.INVALID_UNAUTHENTICATED_MESSAGE;
    } else if (exception is ApiException) {
      _body = Errors.INVALID_API_MESSAGE;
    } else if (exception is InternalServerException) {
      _body = Errors.INTERNAL_SERVER_MESSAGE;
    } else if (exception is CacheException) {
      _body = Errors.CACHE_FAILURE_MESSAGE;
    } else if (exception is ApiErrorMessageException &&
        exception.errorMessage != null) {
      _body = exception.errorMessage;
    } else {
      _body = Errors.UNKNOWN_FAILURE_MESSAGE;
    }

    return _body;
  }
}
