import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';

class AboutPokemonWidget extends StatelessWidget {
  Pokemon pokemon;
  AboutPokemonWidget({
    required this.pokemon,
  });

  Widget _buildDetailData(String title, String value) {
    return Row(
      children: [
        Container(
          width: 150,
          child: Text(title),
          padding: EdgeInsets.symmetric(vertical: 2),
        ),
        Text(value),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText("Poderes"),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16,
            ),
            height: 35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...pokemon.weaknesses
                    .map(
                      (poder) => TypePokemonContainer(
                          type: poder.name, color: Colors.red),
                    )
                    .toList(),
              ],
            ),
          ),
          titleText("Pokedex Data"),
          SizedBox(height: 16),
          Column(
            children: [
              _buildDetailData("Heigth", pokemon.height),
              _buildDetailData("Weitgth", pokemon.weight),
              _buildDetailData("Candy", pokemon.candy),
              _buildDetailData("Candy count", pokemon.candyCount.toString()),
              _buildDetailData("Egg", pokemon.egg.toString()),
            ],
          )
        ],
      ),
    );
  }
}
