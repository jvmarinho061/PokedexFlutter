import 'package:dio/dio.dart';
import 'package:projetopokedex/common/error/failure.dart';
import 'package:projetopokedex/common/models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemon();
}

class PokemonRepository implements IPokemonRepository {
  final Dio dio;

  PokemonRepository({required this.dio});
  @override
  Future<List<Pokemon>> getAllPokemon({int offset = 0}) async {
    try {
      final response = await dio.get(
        'https://pokeapi.co/api/v2/pokemon?limit=20&offset=$offset',
      );
      final json = response.data as Map<String, dynamic>;
      final list = json['results'] as List;
      final pokemons = await Future.wait(
        list.map((e) async {
          final detailResponse = await dio.get(e['url']);
          return Pokemon.fromMap(detailResponse.data);
        }),
      );

      return pokemons;
    } catch (e) {
      throw Failure(message: 'Erro ao buscar pokemons');
    }
  }
}
