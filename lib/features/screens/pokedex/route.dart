import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/features/screens/details/detail_container.dart';
import 'package:projetopokedex/features/screens/home/container/home_container.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({
    super.key,
    required this.repository,
    required this.dataSource,
  });
  final PokemonRepository repository;
  final PokemonLocalDataSource dataSource;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/home',
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          return MaterialPageRoute(
            builder: (context) {
              return HomeContainer(
                dataSource: dataSource,
                repository: repository,
                onItemTap: (route, arguments) {
                  Navigator.of(context).pushNamed(route, arguments: arguments);
                },
              );
            },
          );
        }
        if (settings.name == '/details') {
          return MaterialPageRoute(
            builder: (context) {
              return DetailContainer(
                repository: repository,
                arguments: (settings.arguments as DetailArguments),
                onBack: () => Navigator.of(context).pop(),
              );
            },
          );
        }
      },
    );
  }
}
