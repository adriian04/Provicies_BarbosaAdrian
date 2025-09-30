import '../../domain/entities/provincia.dart';

class ProvinciaMapper {
  static Provincia fromJSON(Map<String, dynamic> json) {
    return Provincia(
      nom: json['provincia'],
      imatge: json['img'],
    );
  }
}
