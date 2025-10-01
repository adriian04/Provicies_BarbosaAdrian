import 'package:provincies_barbosaadrian/infrastructure/datasource/comarques_api.dart';
import 'package:provincies_barbosaadrian/infrastructure/repositories/comarques_repository_impl.dart';

import 'lib/domain/repositories/comarques_repository.dart';
import 'lib/infrastructure/datasource/comarques_api.dart';
import 'lib/infrastructure/repositories/comarques_repository_impl.dart';

void main(List<String> args) async {
  final api = ComarquesApi();
  final repository = ComarquesRepositoryImpl(api);

  if (args.isEmpty) {
    print("Usa: dart run tasca2 <provincies|comarques|infocomarca> [param]");
    return;
  }

  switch (args[0]) {
    case 'provincies':
      final provincies = await repository.obtenirProvincies();
      provincies.forEach(print);
      break;

    case 'comarques':
      if (args.length < 2) {
        print("Has d'indicar una província");
        return;
      }
      final comarques = await repository.obtenirComarques(args[1]);
      comarques.forEach(print);
      break;

    case 'infocomarca':
      if (args.length < 2) {
        print("Has d'indicar una comarca");
        return;
      }
      final comarca = await repository.infoComarca(args[1]);
      print(comarca);
      break;

    default:
      print("Comanda desconeguda");
  }
}
