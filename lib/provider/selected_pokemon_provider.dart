import 'package:flutter/material.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';

class SelectedPokemonProvider extends ChangeNotifier {
  Pokemon? _selectedPokemon;
  Pokemon? get selectedPokemon => _selectedPokemon;

  set selectPokemon(Pokemon pokemon) {
    _selectedPokemon = pokemon;
    notifyListeners();
  }
}
