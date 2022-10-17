import 'package:equatable/equatable.dart';

class RandomQoate extends Equatable {
  final String contect;
  final int id;
  final String auther;
  final String permalink;

  const RandomQoate(
      {required this.contect,
      required this.auther,
      required this.id,
      required this.permalink});

  @override
  List<Object?> get props => [id, contect, auther, permalink];
}
