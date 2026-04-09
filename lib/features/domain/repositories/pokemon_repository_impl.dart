import 'package:projetopokedex/common/error/failure.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/features/domain/datasources/pokemon_remote_datarsource.dart';
import 'package:projetopokedex/features/domain/repositories/pokemon_repository.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class PokemonRepository implements IPokemonRepository {
  final PokemonRemoteDatarsource remote;
  final PokemonLocalDataSource local;

  PokemonRepository({required this.remote, required this.local});

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0}) async {
    try {
      //apenas regra de negocio
      final cached = await local.getCachedPokemon();
      if (cached.isNotEmpty && offset == 0) {
        return cached;
      }
      final remoteData = await remote.getPokemons(offset);

      await local.savePokemon(remoteData);
      return remoteData;
    } catch (e) {
      throw Failure(message: 'Error ao buscar pokemons');
    }
  }
}
