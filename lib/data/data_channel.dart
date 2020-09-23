import 'package:meta/meta.dart';
import 'package:pokemon/client/api_errors/exceptions.dart';
import 'package:pokemon/locator.dart';

class DataChannel<Error, Data> {
  Exception error;
  Data data;

  final ExceptionHelper _exceptionHelper = locator<ExceptionHelper>();

  DataChannel({
    @required this.error,
    @required this.data,
  });

  // checks whether an error is present
  bool get hasError => error != null;

  // checks whether data is available
  bool get hasData => data != null;

  // returns just error
  factory DataChannel.error(Exception error) {
    return DataChannel(
      error: error,
      data: null,
    );
  }

  // returns just data
  factory DataChannel.data(Data data) {
    return DataChannel(
      error: null,
      data: data,
    );
  }

  // forwards error or data
  factory DataChannel.forward(DataChannel _dc, Data data) {
    if (_dc.hasError) {
      return DataChannel.error(_dc.error);
    }

    return DataChannel.data(data);
  }

  // pick onError, onNoError, onData or onNoData
  void pick({
    Function(String errorMessage) onError,
    Function(Data data) onNoError,
    Function(Data data) onData,
  }) {
    if (hasError) {
      if (onError != null) {
        final errorMessage = _exceptionHelper.getErrorMessage(error);
        onError(errorMessage);
      }

      return;
    }

    if (onNoError != null) {
      onNoError(data);

      return;
    }

    if (hasData) {
      if (onData != null) {
        onData(data);
      }

      return;
    }
  }
}
