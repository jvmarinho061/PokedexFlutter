import 'package:isar_community/isar.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';
import 'package:projetopokedex/snapshots/isar/entities/pokemon_description_entity.dart';
import 'package:projetopokedex/snapshots/isar/entities/pokemon_entity.dart';
import 'package:projetopokedex/snapshots/isar/isar_db.dart';
import 'package:projetopokedex/snapshots/isar/mappers/pokemon_description_mapper.dart';
import 'package:projetopokedex/snapshots/isar/mappers/pokemon_mapper.dart';

class PokemonLocalDataSource {
  final IsarDb isarDb;

  PokemonLocalDataSource({required this.isarDb});

  Future<List<Pokemon>> getCachedPokemon() async {
    final isar = isarDb.isar;

    final result = await isar.pokemonEntitys.where().findAll();

    return result.map((e) => e.toModel()).toList();
  }
  Future<void> savePokemon(List<Pokemon> pokemons) async {
    final isar = isarDb.isar;
    await isar.writeTxn(() async {
      await isar.pokemonEntitys.putAll(
        pokemons.map((e) => e.toEntity()).toList(),
      );
    });
  }
  Future<PokemonDescription?> getCachedDescription(String name) async {
    final isar = isarDb.isar;

    final result = await isar.pokemonDescriptionEntitys
    .filter()
    .nameEqualTo(name)
    .findFirst();
  
  return result?.toModel();
  }
  Future<void> saveDescription(PokemonDescription description) async {
    final isar = isarDb.isar;

    await isar.writeTxn(() async {
      await isar.pokemonDescriptionEntitys.put(
        description.toEntity()
      );
    });
  }
}
