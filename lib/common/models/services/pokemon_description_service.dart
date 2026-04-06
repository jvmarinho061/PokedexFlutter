import 'package:dio/dio.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';

abstract class IPokemonService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://pokeapi.co/api/v2/pokemon"));

  Future<Type> fetchPokemonDescription(int id) async {
    try {
      await _dio.get('/$id');
      return PokemonDescription;
    } catch (e) {
      throw Exception('Failed to load Pokémon description: $e');
    }
  }
}