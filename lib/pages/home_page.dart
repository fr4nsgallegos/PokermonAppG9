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

  // Future<void> _fetchPokemonList() async {
  //   // print(await _restClient?.getPokemonList());
  //   // print(pokemonList);
  //   // _pokemonModelList = pokemonList;
  //   // setState(() {});
  //   final dio = Dio(); // Provide a dio instance
  //   dio.options.headers['Demo-Header'] =
  //       'demo header'; // config your dio headers globally
  //   final client = RestClient(dio);

  //   client.getPokemonList().then((it) => print(it.length));
  // }

  fetchPokemonModelList() async {
    _pokemonModelList = await ApiServices().getPokemonList();
    setState(() {});
  }

  @override
  void initState() {
    fetchPokemonModelList();
    // _initialiceClient();
    // _fetchPokemonList();
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
          child: _pokemonModelList == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
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
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.93,
                        ),
                        children: [
                          ..._pokemonModelList!.pokemon
                              .map(
                                (pokemon) => ContainerPokemonWidget(
                                    pokemon: pokemon,
                                    title: pokemon.name,
                                    urlImage: pokemon.img,
                                    isFavorite: false,
                                    color: Colors.green),
                              )
                              .toList()
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
