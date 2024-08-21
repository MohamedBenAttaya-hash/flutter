import 'package:get/get_utils/get_utils.dart';

class AppExceptions implements Exception {
  // ignore: prefer_typing_uninitialized_variables
  final _message;
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message])
      : super(message, 'errorMessageNoInternet'.tr);
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'requestTimeout'.tr);
}

class ServerException extends AppExceptions {
  ServerException([String? message])
      : super(message, 'internal_server_error'.tr);
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'invalid_url'.tr);
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, '');
}

class RequestUnauthorized extends AppExceptions {
  RequestUnauthorized([String? message]) : super(message, 'Unauthorized'.tr);
}
