import 'package:flutter/material.dart';
import 'package:projetopokedex/common/error/failure.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/common/widgets/po_error.dart';
import 'package:projetopokedex/common/widgets/po_loading.dart';
import 'package:projetopokedex/features/screens/details/datail_page.dart';
import 'package:projetopokedex/features/screens/details/detail_controller.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_description_repository.dart';
import 'package:projetopokedex/snapshots/datasources/pokemon_local_data_source.dart';

class DetailArguments {
  DetailArguments({this.index = 0, required this.pokemon});

  final Pokemon pokemon;
  final int? index;
}

class DetailContainer extends StatefulWidget {
  const DetailContainer({
    super.key,
    required this.repository,
    required this.arguments,
    required this.onBack,
    required this.dataSource,
    required this.descriptionRepository,
  });

  final IPokemonRepository repository;
  final DetailArguments arguments;
  final VoidCallback onBack;
  final PokemonLocalDataSource dataSource;
  final PokemonDescriptionRepository descriptionRepository;

  @override
  State<DetailContainer> createState() => DetailContainerState();
}

class DetailContainerState extends State<DetailContainer> {
  late PageController pageController;
  late Future<List<Pokemon>> future;
  late DetailController detailController;

  Pokemon? pokemon;

  @override
  void initState() {
    super.initState();

    pageController = PageController(
      viewportFraction: 0.5,
      initialPage: widget.arguments.index ?? 0,
    );
    detailController = DetailController(
      widget.dataSource,
      repository: widget.descriptionRepository,
    );
    future = widget.repository.getPokemon();
    pokemon = widget.arguments.pokemon;
    detailController.loadDescription(pokemon!.name);
  }

  @override
  void dispose() {
    pageController.dispose();
    detailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const PoLoading();
        }
        if (snapshot.hasError) {
          return PoError(
            error: (snapshot.error as Failure).message,
          );
        }
        final list = snapshot.data!;
        return DetailPage(
          pokemon: pokemon!,
          list: list,
          onBack: widget.onBack,
          controller: detailController,
          pageController: pageController,

          onChangePokemon: (Pokemon value) {
            setState(() {
              pokemon = value;
            });
            detailController.loadDescription(value.name);
          },
        );
      },
    );
  }
}