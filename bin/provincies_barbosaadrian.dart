import 'package:provincies_barbosaadrian/infrastructure/datasource/comarques_api.dart';
import 'package:provincies_barbosaadrian/infrastructure/repositories/comarques_repository_impl.dart';

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
      try {
        final comarques = await repository.obtenirComarques(args[1]);
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
      try {
        final comarca = await repository.infoComarca(args[1]);
        print(comarca);
      } catch (e) {
        print('Comarca no trobada');
      }
      break;

    default:
      print("Comanda desconeguda");
  }
}
