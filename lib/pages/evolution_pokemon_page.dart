import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';

class EvolutionPokemonPage extends StatelessWidget {
  Pokemon selectedPokemon;
  List<Pokemon?> prevEvolution;
  List<Pokemon?> nextEvolution;
  EvolutionPokemonPage({
    required this.selectedPokemon,
    required this.prevEvolution,
    required this.nextEvolution,
  });

  Widget _buildLineasPunteadas() {
    return Container(
      width: 1,
      height: 40,
      child: DottedBorder(
        radius: Radius.circular(10),
        color: Colors.green,
        dashPattern: [3, 1],
        child: SizedBox(),
      ),
    );
  }

  _buildEvolutionPokemon(String number, Pokemon pokemon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            _buildLineasPunteadas(),
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
                number,
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
            _buildLineasPunteadas(),
          ],
        ),
        Image.network(pokemon.img),
        pokemonText(pokemon.name)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //ME ASEGURO QUE LA LISTA DE POKEMONES NO SEA NULLA NUNCA
    final prevEvolutionList = prevEvolution.isNotEmpty ? prevEvolution : [];
    final nextEvolutionList = nextEvolution.isNotEmpty ? nextEvolution : [];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...prevEvolutionList.asMap().entries.map((entry) {
            print(entry);
            int index = entry.key;
            Pokemon? pokemon = entry.value;
            if (pokemon != null) {
              return _buildEvolutionPokemon((index + 1).toString(), pokemon);
            } else {
              return SizedBox();
            }
          }).toList(),
          _buildEvolutionPokemon("2", selectedPokemon),
          // _buildEvolutionPokemon("1", selectedPokemon),
          // _buildEvolutionPokemon("2", selectedPokemon),
          // _buildEvolutionPokemon("3", selectedPokemon),
          // ElevatedButton(
          //   onPressed: () {
          //     prevEvolution?.forEach((element) => print(element?.name));
          //     // print(prevEvolution);
          //   },
          //   child: Text("prev prueba"),
          // )
        ],
      ),
    );
  }
}
