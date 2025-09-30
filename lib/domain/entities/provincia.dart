class Provincia {
  final String nom;
  final String imatge;

  Provincia({
    required this.nom,
    required this.imatge,
  });

  @override
  String toString() {
    return "$nom ($imatge)";
  }
}
