import 'package:flutter/material.dart';
import 'package:pokemonapp/apiservices/api_services.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';

class PokemonProvider with ChangeNotifier {
  PokemonModelList? _pokemonModelList;

  PokemonModelList? get pokemonModelList => _pokemonModelList;

  Future<void> fetchPokemonList() async {
    _pokemonModelList = await ApiServices().getPokemonList();
    notifyListeners();
  }
}
