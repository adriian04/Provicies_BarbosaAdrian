import '../entities/provincia.dart';
import '../entities/comarca_simple.dart';
import '../entities/comarca.dart';

abstract class ComarquesRepository {
  Future<List<Provincia>> obtenirProvincies();
  Future<List<ComarcaSimple>> obtenirComarques(String provincia);
  Future<Comarca> infoComarca(String comarca); // por implementar
}
