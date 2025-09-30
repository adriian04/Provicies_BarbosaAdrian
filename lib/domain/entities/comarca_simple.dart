class ComarcaSimple {
  final String comarca;
  final String imatge;

  ComarcaSimple({
    required this.comarca,
    required this.imatge,
  });

  @override
  String toString() {
    return "$comarca ($imatge)";
  }
}
