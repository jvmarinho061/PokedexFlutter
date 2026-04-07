import 'package:projetopokedex/common/models/pokemondescription.dart';
import 'package:projetopokedex/snapshots/isar/entities/pokemon_description_entity.dart';

extension PokemonDescriptionEntityMapper on PokemonDescriptionEntity {
  PokemonDescription toModel() {
    return PokemonDescription(
      name: name,
      height: height,
      weight: weight,
      abilities: abilities,
      types: types,
      weaknesses: weaknesses,
      description: description,
      category: category,
    );
  }
}

extension PokemonDescriptionMapper on PokemonDescription {
  PokemonDescriptionEntity toEntity() {
    return PokemonDescriptionEntity()
      ..name = name
      ..height = height
      ..weight = weight
      ..abilities = abilities
      ..types = types
      ..weaknesses = weaknesses
      ..description = description
      ..category = category;
  }
}