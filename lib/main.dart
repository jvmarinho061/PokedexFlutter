import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/features/screens/pokedex/route.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';
import 'package:projetopokedex/snapshots/isar/isar_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isarDb = IsarDb();
  await isarDb.open();
  runApp(MyApp(isarDb: isarDb));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isarDb});
  final IsarDb isarDb;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: PokedexRoute(
        dataSource: PokemonLocalDataSource(isarDb: isarDb),
        repository: PokemonRepository(dio: Dio()),
      ),
    );
  }
}
