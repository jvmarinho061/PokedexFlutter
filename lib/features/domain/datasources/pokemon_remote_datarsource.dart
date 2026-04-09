import 'package:dio/dio.dart';
import 'package:projetopokedex/common/models/pokemon.dart';

class PokemonRemoteDatarsource {
  final Dio dio;

  PokemonRemoteDatarsource(this.dio);

  Future<List<Pokemon>> getPokemons(int offset) async {
    final reponse = await dio.get(
      'https://pokeapi.co/api/v2/pokemon?limit=20&offset=$offset',
      );
      final list = reponse.data['results'];

    return Future.wait(
      list.map<Pokemon>((e) async {
        final detail = await dio.get(e['url']);
        return Pokemon.fromMap(detail.data);
      })
    );
  }
}