import '../../domain/entities/comarca_simple.dart';

class ComarcaSimpleMapper {
  static ComarcaSimple fromJSON(Map<String, dynamic> json) {
    //print(json);

    return ComarcaSimple(
      comarca: json['nom'] ?? 'Sense nom',
      imatge: json['img'] ?? 'Desconeguda',
    );
  }
}
