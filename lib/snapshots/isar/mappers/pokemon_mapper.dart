import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/features/domain/entities/pokemon_entity.dart';

extension PokemonMapper on PokemonEntity {
  Pokemon toModel() {
    return Pokemon(
      name: name, 
      types: types, 
      id: id, 
      num: pokemonId.toString()
      );
  }
}

extension PokemonToEntity on Pokemon {
  PokemonEntity toEntity() {
    return PokemonEntity()
    ..pokemonId = id
    ..name = name
    ..types = types;
  }
}