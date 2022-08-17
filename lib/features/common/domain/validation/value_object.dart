import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<Failure, T> get value;

  T getOrCrash() {
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  bool isValid() => value.isRight();

  T getValue({required T defaultValue}) =>
      isValid() ? getOrCrash() : defaultValue;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
