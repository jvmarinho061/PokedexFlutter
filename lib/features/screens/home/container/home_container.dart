import 'package:flutter/material.dart';
import 'package:projetopokedex/common/error/failure.dart';
import 'package:projetopokedex/common/models/repositories/pokemon_repository.dart';
import 'package:projetopokedex/features/screens/details/detail_container.dart';
import 'package:projetopokedex/features/screens/home/container/pages/home_controller.dart';
import 'package:projetopokedex/features/screens/home/container/pages/home_error.dart';
import 'package:projetopokedex/features/screens/home/container/pages/home_loading.dart';
import 'package:projetopokedex/features/screens/home/container/pages/home_page.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({
    super.key,
    required this.repository,
    required this.onItemTap,
  });
  final PokemonRepository repository;
  final Function(String, DetailArguments) onItemTap;

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  late HomeController controller;

  String? error;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    controller = HomeController(repository: widget.repository);

    _init();
  }

  Future<void> _init() async {
    try {
      await controller.loadPokemons();
    } catch (e) {
      error = (e is Failure) ? e.message : 'Erro inesperado';
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const HomeLoading();
    }

    if (error != null) {
      return HomeError(error: error!);
    }

    return HomePage(controller: controller, onItemTap: widget.onItemTap);
  }
}
