import 'package:clean_archeticture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
