class PokemonDescription {
  final String name;
  final String height;
  final String weight;
  final List<String> abilities;
  final List<String> types;
  final List<String> weaknesses;
  final String description;
  final String category;

  PokemonDescription({
    required this.name,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.types,
    required this.weaknesses,
    required this.description,
    required this.category,
  });
}