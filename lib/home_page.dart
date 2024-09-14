import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/widgets/container_pokemon_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText("Tu Pokedex"),
              Text(
                  "¿Quién es este pokeón? Busca el pokemon de tu preferencia y observa sus cualidades."),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    ContainerPokemonWidget(
                      title: "Bulbasaur",
                      color: Color(0xffEAFAED),
                      isFavorite: false,
                      urlImage:
                          "http://www.serebii.net/pokemongo/pokemon/001.png",
                    ),
                    ContainerPokemonWidget(
                      title: "Bulbasaur",
                      color: Color(0xffEAFAED),
                      isFavorite: false,
                      urlImage:
                          "http://www.serebii.net/pokemongo/pokemon/001.png",
                    ),
                    ContainerPokemonWidget(
                      title: "Bulbasaur",
                      color: Color(0xffEAFAED),
                      isFavorite: false,
                      urlImage:
                          "http://www.serebii.net/pokemongo/pokemon/001.png",
                    ),
                    ContainerPokemonWidget(
                      title: "Bulbasaur",
                      color: Color(0xffEAFAED),
                      isFavorite: false,
                      urlImage:
                          "http://www.serebii.net/pokemongo/pokemon/001.png",
                    ),
                    ContainerPokemonWidget(
                      title: "Bulbasaur",
                      color: Color(0xffEAFAED),
                      isFavorite: false,
                      urlImage:
                          "http://www.serebii.net/pokemongo/pokemon/001.png",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
