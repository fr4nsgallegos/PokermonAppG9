import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:pokemonapp/pages/evolution_pokemon_page.dart';
import 'package:pokemonapp/widgets/about_pokemon_widget.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';

class PokemonPage extends StatelessWidget {
  Pokemon pokemon;
  Color color;
  PokemonPage({
    required this.pokemon,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: color.withOpacity(0.4),
        appBar: AppBar(
          backgroundColor: color.withOpacity(0.1),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.favorite_border),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  pokemon.img,
                  fit: BoxFit.cover,
                  height: 250,
                ),
                pokemonText(pokemon.name),
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
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2 - 80,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: "About"),
                              Tab(text: "Evolution"),
                            ],
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.black,
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                AboutPokemonWidget(
                                  pokemon: pokemon,
                                ),
                                EvolutionPokemonPage(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
