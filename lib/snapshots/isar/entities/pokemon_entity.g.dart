// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonEntityCollection on Isar {
  IsarCollection<PokemonEntity> get pokemonEntitys => this.collection();
}

const PokemonEntitySchema = CollectionSchema(
  name: r'PokemonEntity',
  id: 6985887121947963534,
  properties: {
    r'name': PropertySchema(id: 0, name: r'name', type: IsarType.string),
    r'pokemonId': PropertySchema(
      id: 1,
      name: r'pokemonId',
      type: IsarType.long,
    ),
    r'types': PropertySchema(id: 2, name: r'types', type: IsarType.stringList),
  },

  estimateSize: _pokemonEntityEstimateSize,
  serialize: _pokemonEntitySerialize,
  deserialize: _pokemonEntityDeserialize,
  deserializeProp: _pokemonEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'pokemonId': IndexSchema(
      id: -2962037729536387078,
      name: r'pokemonId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'pokemonId',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _pokemonEntityGetId,
  getLinks: _pokemonEntityGetLinks,
  attach: _pokemonEntityAttach,
  version: '3.3.2',
);

int _pokemonEntityEstimateSize(
  PokemonEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.types.length * 3;
  {
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _pokemonEntitySerialize(
  PokemonEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.pokemonId);
  writer.writeStringList(offsets[2], object.types);
}

PokemonEntity _pokemonEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonEntity();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  object.pokemonId = reader.readLong(offsets[1]);
  object.types = reader.readStringList(offsets[2]) ?? [];
  return object;
}

P _pokemonEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonEntityGetId(PokemonEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonEntityGetLinks(PokemonEntity object) {
  return [];
}

void _pokemonEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  PokemonEntity object,
) {
  object.id = id;
}

extension PokemonEntityByIndex on IsarCollection<PokemonEntity> {
  Future<PokemonEntity?> getByPokemonId(int pokemonId) {
    return getByIndex(r'pokemonId', [pokemonId]);
  }

  PokemonEntity? getByPokemonIdSync(int pokemonId) {
    return getByIndexSync(r'pokemonId', [pokemonId]);
  }

  Future<bool> deleteByPokemonId(int pokemonId) {
    return deleteByIndex(r'pokemonId', [pokemonId]);
  }

  bool deleteByPokemonIdSync(int pokemonId) {
    return deleteByIndexSync(r'pokemonId', [pokemonId]);
  }

  Future<List<PokemonEntity?>> getAllByPokemonId(List<int> pokemonIdValues) {
    final values = pokemonIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'pokemonId', values);
  }

  List<PokemonEntity?> getAllByPokemonIdSync(List<int> pokemonIdValues) {
    final values = pokemonIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'pokemonId', values);
  }

  Future<int> deleteAllByPokemonId(List<int> pokemonIdValues) {
    final values = pokemonIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'pokemonId', values);
  }

  int deleteAllByPokemonIdSync(List<int> pokemonIdValues) {
    final values = pokemonIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'pokemonId', values);
  }

  Future<Id> putByPokemonId(PokemonEntity object) {
    return putByIndex(r'pokemonId', object);
  }

  Id putByPokemonIdSync(PokemonEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'pokemonId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPokemonId(List<PokemonEntity> objects) {
    return putAllByIndex(r'pokemonId', objects);
  }

  List<Id> putAllByPokemonIdSync(
    List<PokemonEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'pokemonId', objects, saveLinks: saveLinks);
  }
}

extension PokemonEntityQueryWhereSort
    on QueryBuilder<PokemonEntity, PokemonEntity, QWhere> {
  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhere> anyPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'pokemonId'),
      );
    });
  }
}

extension PokemonEntityQueryWhere
    on QueryBuilder<PokemonEntity, PokemonEntity, QWhereClause> {
  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause>
  pokemonIdEqualTo(int pokemonId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'pokemonId', value: [pokemonId]),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause>
  pokemonIdNotEqualTo(int pokemonId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'pokemonId',
                lower: [],
                upper: [pokemonId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'pokemonId',
                lower: [pokemonId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'pokemonId',
                lower: [pokemonId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'pokemonId',
                lower: [],
                upper: [pokemonId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause>
  pokemonIdGreaterThan(int pokemonId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'pokemonId',
          lower: [pokemonId],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause>
  pokemonIdLessThan(int pokemonId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'pokemonId',
          lower: [],
          upper: [pokemonId],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterWhereClause>
  pokemonIdBetween(
    int lowerPokemonId,
    int upperPokemonId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'pokemonId',
          lower: [lowerPokemonId],
          includeLower: includeLower,
          upper: [upperPokemonId],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension PokemonEntityQueryFilter
    on QueryBuilder<PokemonEntity, PokemonEntity, QFilterCondition> {
  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  pokemonIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pokemonId', value: value),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  pokemonIdGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pokemonId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  pokemonIdLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pokemonId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  pokemonIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pokemonId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'types', value: ''),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'types', value: ''),
      );
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', length, true, length, true);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, true, 0, true);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, false, 999999, true);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', 0, true, length, include);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
  typesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'types', length, include, 999999, true);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterFilterCondition>
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
}

extension PokemonEntityQueryObject
    on QueryBuilder<PokemonEntity, PokemonEntity, QFilterCondition> {}

extension PokemonEntityQueryLinks
    on QueryBuilder<PokemonEntity, PokemonEntity, QFilterCondition> {}

extension PokemonEntityQuerySortBy
    on QueryBuilder<PokemonEntity, PokemonEntity, QSortBy> {
  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> sortByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.asc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy>
  sortByPokemonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.desc);
    });
  }
}

extension PokemonEntityQuerySortThenBy
    on QueryBuilder<PokemonEntity, PokemonEntity, QSortThenBy> {
  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy> thenByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.asc);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QAfterSortBy>
  thenByPokemonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.desc);
    });
  }
}

extension PokemonEntityQueryWhereDistinct
    on QueryBuilder<PokemonEntity, PokemonEntity, QDistinct> {
  QueryBuilder<PokemonEntity, PokemonEntity, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QDistinct> distinctByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pokemonId');
    });
  }

  QueryBuilder<PokemonEntity, PokemonEntity, QDistinct> distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }
}

extension PokemonEntityQueryProperty
    on QueryBuilder<PokemonEntity, PokemonEntity, QQueryProperty> {
  QueryBuilder<PokemonEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonEntity, int, QQueryOperations> pokemonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pokemonId');
    });
  }

  QueryBuilder<PokemonEntity, List<String>, QQueryOperations> typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }
}
