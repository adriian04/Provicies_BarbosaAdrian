class Comarca {
  final String comarca;
  final String? capital;
  final int? poblacio;
  final String? img;
  final String? desc;
  final double? latitud;
  final double? longitud;

  Comarca({
    required this.comarca,
    this.capital,
    this.poblacio,
    this.img,
    this.desc,
    this.latitud,
    this.longitud,
  });

  @override
  String toString() {
    return '''
Comarca: $comarca
Capital: ${capital ?? "desconeguda"}
Població: ${poblacio ?? 0}
Imatge: ${img ?? "no disponible"}
Lat/Long: ${latitud ?? 0}, ${longitud ?? 0}
Descripció: ${desc ?? ""}
''';
  }
}
