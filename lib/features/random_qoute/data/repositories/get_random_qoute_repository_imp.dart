import 'package:clean_archeticture/core/errors/exeptions.dart';
import 'package:clean_archeticture/features/random_qoute/data/datasources/random_qoute_remote_data_source.dart';
import 'package:clean_archeticture/features/random_qoute/domain/entities/random_quote.dart';
import 'package:clean_archeticture/core/errors/failure.dart';
import 'package:clean_archeticture/features/random_qoute/domain/repositories/random_qoute_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomQouteRepositoryImp implements RandomQouteRepository {
  RandomQouteRemoteDataSource randomQouteRemoteDataSource;
  GetRandomQouteRepositoryImp({required this.randomQouteRemoteDataSource});

  @override
  Future<Either<Failure, RandomQoate>> getRandomQoute() async {
    try {
      final response = await randomQouteRemoteDataSource.getRandomQoutRemote();
      return right(response);
    } on ServerExeption {
      return left(ServerFailure());
    }
  }
}
