import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';

class ContainerPokemonWidget extends StatelessWidget {
  String title;
  String urlImage;
  bool isFavorite;
  Color color;

  ContainerPokemonWidget({
    required this.title,
    required this.urlImage,
    required this.isFavorite,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              titleText(title),
              Icon(isFavorite ? Icons.favorite : Icons.favorite_border)
            ],
          ),
          Image.network(
            urlImage,
          ),
        ],
      ),
    );
  }
}
