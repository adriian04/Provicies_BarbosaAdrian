import 'package:provincies_barbosaadrian/domain/repositories/comarca_repository.dart';
import 'package:provincies_barbosaadrian/infrastructure/mappers/provincies_mapper.dart';

import '../../domain/entities/provincia.dart';
import '../../domain/entities/comarca_simple.dart';
import '../../domain/entities/comarca.dart';
import '../../domain/repositories/comarques_repository.dart';
import '../datasource/comarques_api.dart';
import '../mappers/provincia_mapper.dart';
import '../mappers/comarca_simple_mapper.dart';
import '../mappers/comarca_mapper.dart';

class ComarquesRepositoryImpl implements ComarquesRepository {
  final ComarquesApi api;

  ComarquesRepositoryImpl(this.api);

  @override
  Future<List<Provincia>> obtenirProvincies() async {
    final data = await api.obtenirProvincies();
    return data.map<Provincia>((p) => ProvinciaMapper.fromJSON(p)).toList();
  }

  @override
  Future<List<ComarcaSimple>> obtenirComarques(String provincia) async {
    final data = await api.obtenirComarques(provincia);
    return data.map<ComarcaSimple>((c) => ComarcaSimpleMapper.fromJSON(c)).toList();
  }

  @override
  Future<Comarca> infoComarca(String comarca) async {
    final data = await api.infoComarca(comarca);
    return ComarcaMapper.fromJSON(data);
  }
}
