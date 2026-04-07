import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_description_repository.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class DetailController extends ChangeNotifier {
  final PokemonDescriptionRepository repository;
  final PokemonLocalDataSource dataSource;

  DetailController(
    this.dataSource, {
    required this.repository,
  });

  PokemonDescription? description;
  bool isLoading = false;
  String? error;

  Future<void> loadDescription(String name) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      final cached = await dataSource.getCachedDescription(name);

      if (cached != null) {
        description = cached;
      } else {
        final result = await repository.getPokemonDescription(name);
        await dataSource.saveDescription(result);
        description = result;
      }
    } catch (e) {
      error = 'Erro ao carregar descrição';
    }

    isLoading = false;
    notifyListeners();
  }
}