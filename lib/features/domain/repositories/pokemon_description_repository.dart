import 'package:dio/dio.dart';
import 'package:projetopokedex/common/error/failure.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';

abstract class IPokemonDescriptionRepository {
  Future<PokemonDescription> getPokemonDescription(String name);
}

class PokemonDescriptionRepository implements IPokemonDescriptionRepository {
  final Dio dio;

  PokemonDescriptionRepository({required this.dio});

  @override
  Future<PokemonDescription> getPokemonDescription(String name) async {
    try {
      final pokemonReponse = await dio.get(
        'https://pokeapi.co/api/v2/pokemon/$name',
      );
      final pokemonJson = pokemonReponse.data;
      //decricao e categoria
      final speciesReponse = await dio.get(
        'https://pokeapi.co/api/v2/pokemon-species/$name',
      );
      final speciesJson = speciesReponse.data;
      //tipos
      final types = (pokemonJson['types'] as List)
          .map((e) => e['type']['name'] as String)
          .toList();
      final abilities = (pokemonJson['abilities'] as List)
          .map((e) => e['ability']['name'] as String)
          .toList();
      //fraquezas, busca por tipo
      final Set<String> weaknesses = {};

      for (var type in types) {
        final typeResponse =
          await dio.get('https://pokeapi.co/api/v2/type/$type');
        final typeJson =  typeResponse.data;
       final weakTo = (typeJson['damage_relations']['double_damage_from']
            as List);

        for (var w in weakTo) {
          weaknesses.add(w['name']);
        }
      }

      // 🔹 6. Descrição (flavor text em inglês)
      final flavorList = speciesJson['flavor_text_entries'] as List;

      final flavor = flavorList.firstWhere(
        (e) => e['language']['name'] == 'en',
        orElse: () => null,
      );

      final description = flavor != null
          ? (flavor['flavor_text'] as String)
              .replaceAll('\n', ' ')
              .replaceAll('\f', ' ')
          : 'No description';

      // 🔹 7. Categoria
      final category = speciesJson['genera']
          .firstWhere((e) => e['language']['name'] == 'en')['genus'];

      return PokemonDescription(
        name: name,
        height: '${pokemonJson['height'] / 10} m',
        weight: '${pokemonJson['weight'] / 10} kg',
        abilities: abilities,
        types: types,
        weaknesses: weaknesses.toList(),
        description: description,
        category: category,
      );
    } catch (e) {
      throw Failure(message: 'Erro ao buscar detalhes do Pokémon');
    }
  }
}
