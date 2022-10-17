import 'package:clean_archeticture/core/errors/failure.dart';
import 'package:clean_archeticture/core/usecases/usecase.dart';
import 'package:clean_archeticture/features/random_qoute/domain/entities/random_quote.dart';
import 'package:clean_archeticture/features/random_qoute/domain/repositories/random_qoute_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomQouteUsecase implements Usecase<RandomQoate, NoParam> {
  final RandomQouteRepository randomQouteRepository;
  GetRandomQouteUsecase({required this.randomQouteRepository});

// Future<Either<Failure,RandomQoate>> getRandomQoute(){

// return randomQouteRepository.getRandomQoute();

// }

  @override
  Future<Either<Failure, RandomQoate>> call(NoParam param) async {
    return randomQouteRepository.getRandomQoute();
  }
}
