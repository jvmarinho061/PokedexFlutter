import 'package:isar_community/isar.dart';

part 'pokemon_entity.g.dart';

@collection

class PokemonEntity{
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late int pokemonId;
  late String name;
  late List<String> types;
}
