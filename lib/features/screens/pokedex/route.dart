import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projetopokedex/features/domain/repositories/pokemon_repository_impl.dart';
import 'package:projetopokedex/features/domain/repositories/pokemon_description_repository.dart';
import 'package:projetopokedex/features/screens/details/detail_container.dart';
import 'package:projetopokedex/features/screens/home/container/home_container.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({
    super.key,
  });

  final GetPokemons getPokemons;

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
                  Navigator.of(context).pushNamed(
                    route,
                    arguments: arguments,
                  );
                },
              );
            },
          );
        }

        if (settings.name == '/details') {
          final args = settings.arguments as DetailArguments;
          final descriptionRepository =
              PokemonDescriptionRepository(dio: dio);

          return MaterialPageRoute(
            builder: (context) {
              return DetailContainer(
                repository: repository,
                arguments: args,
                onBack: () => Navigator.of(context).pop(),
                dataSource: dataSource,
                descriptionRepository: descriptionRepository,
              );
            },
          );
        }
        return null;
      },
    );
  }
}