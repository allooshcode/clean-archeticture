part of 'random_qoute_cubit.dart';

abstract class RandomQouteState extends Equatable {
  const RandomQouteState();

  @override
  List<Object> get props => [];
}

class RandomQouteInitial extends RandomQouteState {}

class RandomQouteLoaded extends RandomQouteState {
  final RandomQoate randomQoate;
  const RandomQouteLoaded(this.randomQoate);
}

class RandomQouteError extends RandomQouteState {
  final String error;
  const RandomQouteError(this.error);
}

class RandomQouteLoading extends RandomQouteState {}
