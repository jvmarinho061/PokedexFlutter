import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/features/screens/pokedex/route.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
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
        repository: PokemonRepository(
          dio: Dio())),
    );
  }
}

