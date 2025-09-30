import '../../domain/entities/comarca_simple.dart';

class ComarcaSimpleMapper {
  static ComarcaSimple fromJSON(Map<String, dynamic> json) {
    return ComarcaSimple(
      comarca: json['comarca'],
      imatge: json['img'],
    );
  }
}
