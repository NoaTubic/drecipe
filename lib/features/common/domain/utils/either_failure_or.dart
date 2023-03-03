import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'result.dart';

typedef EitherFailureOr<T> = Future<Either<Failure, T>>;
typedef StreamFailureOr<T> = Stream<Either<Failure, T>>;
typedef StreamFailureOrResult<T> = Stream<Either<Failure, Result<T>>>;
