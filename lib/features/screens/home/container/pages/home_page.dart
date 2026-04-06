import 'package:flutter/material.dart';
import 'package:projetopokedex/features/screens/details/detail_container.dart';
import 'package:projetopokedex/features/screens/home/container/pages/home_controller.dart';
import 'package:projetopokedex/features/screens/home/container/pages/widgets/pokemon_item_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.controller, required this.onItemTap});

  final HomeController controller;
  final Function(String, DetailArguments) onItemTap;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final ScrollController _scrollController = ScrollController();

  @override 
  void initState() {
    super.initState();

    widget.controller.loadPokemons();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 
      _scrollController.position.maxScrollExtent - 200) {
        widget.controller.loadPokemons();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: const Text('Pokedex',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
          ),
        ),
         actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: AnimatedBuilder(
          animation: widget.controller, 
          builder: (context, _) {
            return GridView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              childAspectRatio: 0.8
              ), 
              itemCount: widget.controller.pokemons.length +
              (widget.controller.isLoading ? 2 : 0),
              itemBuilder: (context,index ) {
                if(index >= widget.controller.pokemons.length) {
                  return const Center(child: CircularProgressIndicator());
                }
                final pokemon = widget.controller.pokemons[index];

                return PokemonItemWidget(
                  pokemon: pokemon, 
                  onTap: widget.onItemTap, 
                  index: index);
              });
          })
      ),
    );
  }
}

