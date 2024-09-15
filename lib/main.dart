import 'package:flutter/material.dart';
import 'package:pokemonapp/pages/home_page.dart';
import 'package:pokemonapp/provider/pokemon_provider.dart';
import 'package:pokemonapp/provider/selected_pokemon_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (contex) => PokemonProvider()),
        ChangeNotifierProvider(create: (context) => SelectedPokemonProvider())
      ],
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
