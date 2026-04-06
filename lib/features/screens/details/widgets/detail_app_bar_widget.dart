import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemon.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget(
      {super.key, required this.pokemon, required this.onBack, required this.isOnTop});
  final Pokemon pokemon;
  final VoidCallback onBack;
  final bool isOnTop;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: pokemon.baseColor,
      leading: IconButton(
        onPressed: onBack,
        icon: Icon(Icons.chevron_left),
        iconSize: 30,
      ),
      centerTitle: false,
      title:  
      AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        opacity: isOnTop ? 0 : 1,
        child: Text(
          pokemon.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
