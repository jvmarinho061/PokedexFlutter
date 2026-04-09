import 'package:projetopokedex/common/models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getPokemons({int offset});
}