import 'package:clean_archeticture/features/random_qoute/domain/entities/random_quote.dart';

class QouteModel extends RandomQoate {
  const QouteModel(
      {required contect, required auther, required id, required permalink})
      : super(permalink: permalink, id: id, auther: auther, contect: contect);

  factory QouteModel.fromJson(Map json) {
    return QouteModel(
        contect: json['contect'],
        auther: json['auther'],
        id: json['id'],
        permalink: json['permalink']);
  }

  @override
  List<Object?> get props => [id, contect, auther, permalink];
}
