import 'package:equatable/equatable.dart';

class ServerExeption extends Equatable implements Exception {
  @override
  List<Object?> get props => [msg];

  final String msg;
  const ServerExeption(this.msg);

  @override
  String toString() {
    return msg;
  }
}

class InternalServerErrorExeption extends ServerExeption {
  const InternalServerErrorExeption([msg]) : super('internal Error');
}

class CashExeption implements Exception {}
