class AppExceptions implements Exception {
  final String? _prefix;
  final String? _message;

  AppExceptions([this._prefix, this._message]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message]) : super(message, 'Internet Error...');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Request Timed Out...');
}

class ServerError extends AppExceptions {
  ServerError([String? message])
      : super(message, 'An internal server error occured...');
}

class InvalidUrlExceptionError extends AppExceptions {
  InvalidUrlExceptionError([String? message])
      : super(message, 'The entered Url is invalid');
}

class FetchDataExceptions extends AppExceptions {
  FetchDataExceptions([String? message])
      : super(message, 'Could not fetch the data');
}
