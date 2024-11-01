import 'package:dartz/dartz.dart';
import 'package:naruto_app/common/errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}