import 'package:provincies_barbosaadrian/infrastructure/datasource/comarques_api.dart';
import 'package:provincies_barbosaadrian/infrastructure/repositories/comarques_repository_impl.dart';

void main(List<String> args) async {
  final api = ComarquesApi("https://node-comarques-rest-server-production.up.railway.app/api/comarques");
  final repository = ComarquesRepositoryImpl(api);

  if (args.isEmpty) {
    print("Usa: dart run provincies_barbosaadrian <provincies|comarques|infocomarca> [param]");
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
      final provincia = args.sublist(1).join(' ');
      try {
        final comarques = await repository.obtenirComarques(provincia);
        comarques.forEach(print);
      } catch (e) {
        print('Província no trobada');
      }
      break;

    case 'infocomarca':
      if (args.length < 2) {
        print("Has d'indicar una comarca");
        return;
      }
      final comarca = args.sublist(1).join(' '); 
      try {
        final infoComarca = await repository.infoComarca(comarca);
        print(infoComarca);
      } catch (e) {
        print('Comarca no trobada');
      }
      break;

    default:
      print("Comanda desconeguda");
  }
}
