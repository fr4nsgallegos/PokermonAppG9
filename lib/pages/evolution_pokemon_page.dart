import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:dotted_border/dotted_border.dart';

class EvolutionPokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          spreadRadius: 3),
                    ],
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  child: DottedBorder(
                    radius: Radius.circular(10),
                    color: Colors.green,
                    dashPattern: [3, 1],
                    child: SizedBox(),
                  ),
                )
              ],
            ),
            Image.network("http://www.serebii.net/pokemongo/pokemon/001.png"),
            pokemonText("Bulbasaur")
          ],
        ),
      ],
    );
  }
}
