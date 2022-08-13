import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_qoute_state.dart';

class RandomQouteCubit extends Cubit<RandomQouteState> {
  RandomQouteCubit() : super(RandomQouteInitial());
}
