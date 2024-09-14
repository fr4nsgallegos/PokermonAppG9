import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';

class PokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAFAED),
      appBar: AppBar(
        backgroundColor: Color(0xffEAFAED),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "http://www.serebii.net/pokemongo/pokemon/001.png",
              fit: BoxFit.cover,
              height: 250,
            ),
            pokemonText("Bulbasaur"),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypePokemonContainer(
                  type: "Grass",
                  color: Colors.green,
                ),
                TypePokemonContainer(
                  type: "Poisson",
                  color: Colors.purple,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
