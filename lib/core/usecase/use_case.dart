import 'package:fpdart/fpdart.dart';

abstract class UseCase<ReturnType, Params, Body> {
  Future<Either<String, ReturnType>> call({required Params? params, required Body? body});
}