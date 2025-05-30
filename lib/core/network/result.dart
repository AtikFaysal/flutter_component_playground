import 'package:flutter_component_playground/core/network/network_exception.dart';

sealed class Result<T> {
  const Result();
}

final class SuccessResult<T> extends Result<T> {
  final T data;
  const SuccessResult(this.data);
}

final class FailureResult<T> extends Result<T> {
  final NetworkException exception;
  const FailureResult(this.exception);
}
