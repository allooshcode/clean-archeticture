import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:clean_archeticture/core/errors/failure.dart';
import 'package:clean_archeticture/core/usecases/usecase.dart';
import 'package:clean_archeticture/features/random_qoute/domain/entities/random_quote.dart';
import 'package:clean_archeticture/features/random_qoute/domain/usecases/get_random_qoute.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'random_qoute_state.dart';

class RandomQouteCubit extends Cubit<RandomQouteState> {
  GetRandomQouteUsecase getRandomQouteUsecase;

  RandomQouteCubit({required this.getRandomQouteUsecase})
      : super(RandomQouteInitial());

  Future<void> getTheRandomQoute() async {
    emit(RandomQouteLoading());
    Either<Failure, RandomQoate> response =
        await getRandomQouteUsecase(NoParam());
    response.fold(
        (failure) => emit(RandomQouteError(_mapFailureToMsg(failure))),
        (randomQoute) => emit(RandomQouteLoaded(randomQoute)));
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'got server error';

      default:
        return 'unknown Error';
    }
  }
}
