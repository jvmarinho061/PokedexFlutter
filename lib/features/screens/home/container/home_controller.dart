import 'package:flutter/foundation.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class HomeController extends ChangeNotifier {
  final PokemonRepository repository;
  final PokemonLocalDataSource dataSource;

  HomeController(this.dataSource, {required this.repository});

  List<Pokemon> pokemons = [];

  bool isLoading = false;
  int offset = 0;

  Future<void> init() async {
    final cached = await dataSource.getCachedPokemon();

    if (cached.isNotEmpty) {
      pokemons.addAll(cached);

      offset = pokemons.length;

      notifyListeners();
    }
    await loadPokemons();
  }

  Future<void> loadPokemons() async {
    if (isLoading) return;

    isLoading = true;
    notifyListeners();

    try {
      final newPokemons = await repository.getPokemon(offset: offset);
      final existingIds = pokemons.map((e) => e.id).toSet();

      final filtered = newPokemons
          .where((p) => !existingIds.contains(p.id))
          .toList();

      pokemons.addAll(filtered);

      await dataSource.savePokemon(filtered);
      offset += 20;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    isLoading = false;
    notifyListeners();
  }
}
