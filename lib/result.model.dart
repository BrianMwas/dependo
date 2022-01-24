import 'package:equatable/equatable.dart';

abstract class Result extends Equatable {
  const Result();
}


class Success<T> extends Result {
  final T data;

  Success(this.data);

  @override
  List<Object?> get props => [];
}

class Error extends Result {

  final String error;

  Error(this.error);

  @override
  List<Object?> get props => [this.error];

}