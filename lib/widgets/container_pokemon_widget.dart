import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:pokemonapp/pages/pokemon_page.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';

class ContainerPokemonWidget extends StatelessWidget {
  Pokemon pokemon;
  String title;
  String urlImage;
  bool isFavorite;
  Color color;

  ContainerPokemonWidget({
    required this.title,
    required this.urlImage,
    required this.isFavorite,
    required this.color,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PokemonPage(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  child: titleText(title),
                ),
                Icon(isFavorite ? Icons.favorite : Icons.favorite_border)
              ],
            ),
            Image.network(
              urlImage,
            ),
          ],
        ),
      ),
    );
  }
}
