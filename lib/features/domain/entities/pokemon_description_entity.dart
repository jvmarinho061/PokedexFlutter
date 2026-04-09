import 'package:isar_community/isar.dart';

part 'pokemon_description_entity.g.dart';

@collection 

class PokemonDescriptionEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String name;
  late String height;
  late String weight;
  late List<String> abilities;
  late List<String> types;
  late List<String> weaknesses;
  late String description;
  late String category;
}