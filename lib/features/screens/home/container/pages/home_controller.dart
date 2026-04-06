import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';

class HomeController extends ChangeNotifier{ 
  final PokemonRepository repository;

  HomeController({required this.repository});

  List<Pokemon> pokemons =[];

  bool isLoading  = false;
  int offset = 0;

  Future<void> loadPokemons() async {
    if (isLoading) return;

    isLoading = true;
    notifyListeners();

    try {
      final newPokemons = 
        await repository.getAllPokemon(offset: offset);

      pokemons.addAll(newPokemons);
      offset += 20;
    } catch (e) {
      print(e);
    }

    isLoading = false;
    notifyListeners();
  }
}