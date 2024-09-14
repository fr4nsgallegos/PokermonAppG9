import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';

class AboutPokemonWidget extends StatelessWidget {
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
                TypePokemonContainer(type: "Fire", color: Colors.red),
                TypePokemonContainer(type: "Ice", color: Colors.red),
                TypePokemonContainer(type: "Fire", color: Colors.red),
                TypePokemonContainer(type: "Fire", color: Colors.red),
                TypePokemonContainer(type: "Fire", color: Colors.red),
                TypePokemonContainer(type: "Lo que sea", color: Colors.red),
                TypePokemonContainer(type: "Fire", color: Colors.red),
              ],
            ),
          ),
          titleText("Pokedex Data"),
          SizedBox(height: 16),
          Column(
            children: [
              _buildDetailData("Heigth", "0.71 m"),
              _buildDetailData("Weitgth", "6.9 kg"),
              _buildDetailData("Candy", "Bulbasaur Candy"),
              _buildDetailData("Candy count", "25"),
              _buildDetailData("Egg", "2 km"),
            ],
          )
        ],
      ),
    );
  }
}
