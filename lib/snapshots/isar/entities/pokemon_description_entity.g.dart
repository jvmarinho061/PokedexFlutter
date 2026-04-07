// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_description_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonDescriptionEntityCollection on Isar {
  IsarCollection<PokemonDescriptionEntity> get pokemonDescriptionEntitys =>
      this.collection();
}

const PokemonDescriptionEntitySchema = CollectionSchema(
  name: r'PokemonDescriptionEntity',
  id: 7228308135652143815,
  properties: {
    r'abilities': PropertySchema(
      id: 0,
      name: r'abilities',
      type: IsarType.stringList,
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'height': PropertySchema(id: 3, name: r'height', type: IsarType.string),
    r'name': PropertySchema(id: 4, name: r'name', type: IsarType.string),
    r'types': PropertySchema(id: 5, name: r'types', type: IsarType.stringList),
    r'weaknesses': PropertySchema(
      id: 6,
      name: r'weaknesses',
      type: IsarType.stringList,
    ),
    r'weight': PropertySchema(id: 7, name: r'weight', type: IsarType.string),
  },

  estimateSize: _pokemonDescriptionEntityEstimateSize,
  serialize: _pokemonDescriptionEntitySerialize,
  deserialize: _pokemonDescriptionEntityDeserialize,
  deserializeProp: _pokemonDescriptionEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _pokemonDescriptionEntityGetId,
  getLinks: _pokemonDescriptionEntityGetLinks,
  attach: _pokemonDescriptionEntityAttach,
  version: '3.3.2',
);

int _pokemonDescriptionEntityEstimateSize(
  PokemonDescriptionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.abilities.length * 3;
  {
    for (var i = 0; i < object.abilities.length; i++) {
      final value = object.abilities[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.height.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.types.length * 3;
  {
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.weaknesses.length * 3;
  {
    for (var i = 0; i < object.weaknesses.length; i++) {
      final value = object.weaknesses[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.weight.length * 3;
  return bytesCount;
}

void _pokemonDescriptionEntitySerialize(
  PokemonDescriptionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.abilities);
  writer.writeString(offsets[1], object.category);
  writer.writeString(offsets[2], object.description);
  writer.writeString(offsets[3], object.height);
  writer.writeString(offsets[4], object.name);
  writer.writeStringList(offsets[5], object.types);
  writer.writeStringList(offsets[6], object.weaknesses);
  writer.writeString(offsets[7], object.weight);
}

PokemonDescriptionEntity _pokemonDescriptionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonDescriptionEntity();
  object.abilities = reader.readStringList(offsets[0]) ?? [];
  object.category = reader.readString(offsets[1]);
  object.description = reader.readString(offsets[2]);
  object.height = reader.readString(offsets[3]);
  object.id = id;
  object.name = reader.readString(offsets[4]);
  object.types = reader.readStringList(offsets[5]) ?? [];
  object.weaknesses = reader.readStringList(offsets[6]) ?? [];
  object.weight = reader.readString(offsets[7]);
  return object;
}

P _pokemonDescriptionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonDescriptionEntityGetId(PokemonDescriptionEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonDescriptionEntityGetLinks(
  PokemonDescriptionEntity object,
) {
  return [];
}

void _pokemonDescriptionEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  PokemonDescriptionEntity object,
) {
  object.id = id;
}

extension PokemonDescriptionEntityByIndex
    on IsarCollection<PokemonDescriptionEntity> {
  Future<PokemonDescriptionEntity?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  PokemonDescriptionEntity? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<PokemonDescriptionEntity?>> getAllByName(
    List<String> nameValues,
  ) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<PokemonDescriptionEntity?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(PokemonDescriptionEntity object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(PokemonDescriptionEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<PokemonDescriptionEntity> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(
    List<PokemonDescriptionEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension PokemonDescriptionEntityQueryWhereSort
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QWhere
        > {
  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterWhere>
  anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PokemonDescriptionEntityQueryWhere
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QWhereClause
        > {
  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'name', value: [name]),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterWhereClause
  >
  nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [],
                upper: [name],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [name],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [name],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [],
                upper: [name],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension PokemonDescriptionEntityQueryFilter
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QFilterCondition
        > {
  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'abilities',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'abilities',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'abilities',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'abilities', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'abilities', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'abilities', length, true, length, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'abilities', 0, true, 0, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'abilities', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'abilities', 0, true, length, include);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'abilities', length, include, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  abilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'category',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'category',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'category',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'category', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'category', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'description',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'description',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'height',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'height',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'height',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'height', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  heightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'height', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'types',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'types',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'types',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'types', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'types', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', length, true, length, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, true, 0, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, true, length, include);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', length, include, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'weaknesses',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'weaknesses',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'weaknesses',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'weaknesses', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'weaknesses', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'weaknesses', length, true, length, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'weaknesses', 0, true, 0, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'weaknesses', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'weaknesses', 0, true, length, include);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'weaknesses', length, include, 999999, true);
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weaknessesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'weight',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'weight',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'weight',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'weight', value: ''),
      );
    });
  }

  QueryBuilder<
    PokemonDescriptionEntity,
    PokemonDescriptionEntity,
    QAfterFilterCondition
  >
  weightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'weight', value: ''),
      );
    });
  }
}

extension PokemonDescriptionEntityQueryObject
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QFilterCondition
        > {}

extension PokemonDescriptionEntityQueryLinks
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QFilterCondition
        > {}

extension PokemonDescriptionEntityQuerySortBy
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QSortBy
        > {
  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDescriptionEntityQuerySortThenBy
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QSortThenBy
        > {
  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QAfterSortBy>
  thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDescriptionEntityQueryWhereDistinct
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QDistinct
        > {
  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByAbilities() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abilities');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByHeight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByWeaknesses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weaknesses');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, PokemonDescriptionEntity, QDistinct>
  distinctByWeight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight', caseSensitive: caseSensitive);
    });
  }
}

extension PokemonDescriptionEntityQueryProperty
    on
        QueryBuilder<
          PokemonDescriptionEntity,
          PokemonDescriptionEntity,
          QQueryProperty
        > {
  QueryBuilder<PokemonDescriptionEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, List<String>, QQueryOperations>
  abilitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abilities');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, String, QQueryOperations>
  categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, String, QQueryOperations>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, String, QQueryOperations>
  heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, String, QQueryOperations>
  nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, List<String>, QQueryOperations>
  typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, List<String>, QQueryOperations>
  weaknessesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weaknesses');
    });
  }

  QueryBuilder<PokemonDescriptionEntity, String, QQueryOperations>
  weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
