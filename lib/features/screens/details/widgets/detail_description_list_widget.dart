import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemondescription.dart';

class DetailDescriptionListWidget extends StatelessWidget {
  const DetailDescriptionListWidget({
  super.key, 
  required this.data});

  final PokemonDescription data;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category: ${data.category}', style: TextStyle(fontSize: 18,)),
        Text('Height: ${data.height}', style: TextStyle(fontSize: 16)),
        Text('Weight: ${data.weight}', style: TextStyle(fontSize: 16)),
        Text('Types: ${data.types.join(', ')}', style: TextStyle(fontSize: 16)),
        Text('Habilities: ${data.abilities.join(', ')}', style: TextStyle(fontSize: 16)),
        Text('Weaknesses: ${data.weaknesses.join(', ')}', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        Text('Description:${data.description}', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}