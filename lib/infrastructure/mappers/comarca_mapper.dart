import '../../domain/entities/comarca.dart';

class ComarcaMapper {
  static Comarca fromJSON(Map<String, dynamic> json) {
    return Comarca(
      comarca: json['comarca'],
      capital: json['capital'],
      poblacio: int.tryParse(json['poblacio'] ?? '0'),
      img: json['img'],
      desc: json['desc'],
      latitud: (json['latitud'] as num?)?.toDouble(),
      longitud: (json['longitud'] as num?)?.toDouble(),
    );
  }
}
