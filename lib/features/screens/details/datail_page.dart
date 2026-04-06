import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_description_repository.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_app_bar_widget.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_description_list_widget.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_list_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.pokemon,
    required this.list,
    required this.onBack,
    required this.controller,
    required this.onChangePokemon,
  });
  final Pokemon pokemon;
  final List<Pokemon> list;
  final VoidCallback onBack;
  final PageController controller;
  final ValueChanged<Pokemon> onChangePokemon;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late ScrollController scrollController;
  late Future<PokemonDescription> futureDescription;
  final repository = PokemonDescriptionRepository(dio: Dio());

  @override
  void didUpdateWidget(covariant DetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.pokemon.name != widget.pokemon.name) {
      setState(() {
        futureDescription = repository.getPokemonDescription(
          widget.pokemon.name,
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    futureDescription = repository.getPokemonDescription(widget.pokemon.name);
  }

  bool isOnTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          setState(() {
            if (scrollController.position.pixels > 37) {
              isOnTop = false;
            } else if (scrollController.position.pixels <= 36) {
              isOnTop = true;
            }
          });
          return false;
        },
        child: CustomScrollView(
          controller: scrollController,
          physics: ClampingScrollPhysics(),
          slivers: [
            DetailAppBarWidget(
              pokemon: widget.pokemon,
              onBack: widget.onBack,
              isOnTop: isOnTop,
            ),
            DetailListWidget(
              pokemon: widget.pokemon,
              list: widget.list,
              controller: widget.controller,
              onChangePokemon: widget.onChangePokemon,
            ),
            SliverFillRemaining(
              child: SizedBox(
                child: Stack(
                  children: [
                    Container(color: widget.pokemon.baseColor),
                    Container(color: widget.pokemon.baseColor),
                    Container(
                      padding: const EdgeInsets.all(16),
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.8),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: FutureBuilder<PokemonDescription>(
                        future: futureDescription,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasError) {
                            return const Center(
                              child: Text('Erro ao carregar descrição'),
                            );
                          }
                          return DetailDescriptionListWidget(
                            data: snapshot.data!,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
