import 'package:flutter/material.dart';
import 'package:pokemonapp/pages/home_page.dart';
import 'package:pokemonapp/provider/pokemon_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (contex) => PokemonProvider(),
    child: MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
