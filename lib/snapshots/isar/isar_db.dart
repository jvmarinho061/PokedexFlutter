import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:projetopokedex/snapshots/isar/entities/pokemon_entity.dart';

class IsarDb {
  Isar? _isar;
  bool _isOpen = false;

  Isar get isar {
    if (_isar == null) {
      throw Exception('Isar ainda não foi inicializado');
    }
    return _isar!;
  }
  Future<void> open() async {
    if (_isOpen) return;

    final dir = await getApplicationCacheDirectory();

    _isar = await Isar.open(
      inspector: true,
      [PokemonEntitySchema],
      directory: dir.path,
      name: 'pokemon_db_offline',
      );
  _isOpen = true;
  }
}