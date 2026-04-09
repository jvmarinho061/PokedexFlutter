import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/features/domain/repositories/pokemon_repository.dart';

class GetPokemons {
  final IPokemonRepository repository;

  GetPokemons(this.repository);

  Future<List<Pokemon>> call({int offset = 0}) {
    return repository.getPokemons(offset: offset);
  }
}