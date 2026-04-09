import 'package:flutter/foundation.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/features/domain/usecases/get_pokemons.dart';

class HomeController extends ChangeNotifier {
  final GetPokemons getPokemons;

  HomeController(this.getPokemons);

  List<Pokemon> pokemons = [];
  int offset = 0;
  bool isLoading = false;

  Future<void> loadPokemons() async {
    if (isLoading) return;

    isLoading = true;
    notifyListeners();

    try {
      final newPokemons = await getPokemons(offset: offset);

      final existingIds = pokemons.map((e) => e.id).toSet();

      final filtered = newPokemons
          .where((p) => !existingIds.contains(p.id))
          .toList();

      pokemons.addAll(filtered);

      offset += 20;
    } catch (e) {
      if (kDebugMode) print(e);
    }

    isLoading = false;
    notifyListeners();
  }
}