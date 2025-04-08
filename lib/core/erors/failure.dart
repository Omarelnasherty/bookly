import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timed out. Please try again.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send request timed out. Please try again.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive response timed out. Please try again.");
      case DioExceptionType.badCertificate:
        return ServerFailure(
          "Bad certificate. Unable to establish a secure connection.",
        );
      case DioExceptionType.badResponse:
        return ServerFailure(
          "Bad response from the server. Please try again later.",
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled. Please try again.");
      case DioExceptionType.connectionError:
        return ServerFailure(
          "Connection error occurred. Please check your internet connection.",
        );
      case DioExceptionType.unknown:
        return ServerFailure("An unknown error occurred. Please try again.");
    }
  }
}
