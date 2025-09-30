import 'dart:convert';
import 'package:http/http.dart' as http;

class ComarquesApi {
  final String baseUrl = "https://node-comarques-rest-server-production.up.railway.app/api/comarques";

  Future<List<dynamic>> obtenirProvincies() async {
    final response = await http.get(Uri.parse("$baseUrl/provincies"));
    if (response.statusCode != 200) throw Exception("Error al obtenir províncies");
    return jsonDecode(response.body);
  }

  Future<List<dynamic>> obtenirComarques(String provincia) async {
    final response = await http.get(Uri.parse("$baseUrl/comarquesAmbImatge/$provincia"));
    if (response.statusCode != 200) throw Exception("Error al obtenir comarques");
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> infoComarca(String comarca) async {
    final response = await http.get(Uri.parse("$baseUrl/infoComarca/$comarca"));
    if (response.statusCode != 200) throw Exception("Error al obtenir info comarca");
    return jsonDecode(response.body);
  }
}
