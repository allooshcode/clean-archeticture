import 'package:clean_archeticture/core/errors/failure.dart';
import 'package:clean_archeticture/features/random_qoute/domain/entities/random_quote.dart';
import 'package:dartz/dartz.dart';

abstract class RandomQouteRepository {
  Future<Either<Failure, RandomQoate>> getRandomQoute();
}
