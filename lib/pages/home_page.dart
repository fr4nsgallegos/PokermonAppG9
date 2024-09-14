import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemonapp/apiservices/api_services.dart';
import 'package:pokemonapp/apiservices/pokemon_api.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:pokemonapp/widgets/container_pokemon_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late RestClient? _restClient;
  PokemonModelList? _pokemonModelList;

  void _initialiceClient() {
    final dio = Dio();
    _restClient = RestClient(dio);
  }

  Future<void> _fetchPokemonList() async {
    final pokemonList = await _restClient?.getPokemonList();
    print(pokemonList);
    // _pokemonModelList = pokemonList;
    setState(() {});
  }

  @override
  void initState() {
    _initialiceClient();
    _fetchPokemonList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          // ApiServices().getPokemonList();
          print(_pokemonModelList?.pokemon[0].name);
        }),
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
