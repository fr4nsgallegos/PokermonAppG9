import 'package:flutter/material.dart';
import 'package:pokemonapp/constants/costants.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:pokemonapp/pages/pokemon_page.dart';
import 'package:pokemonapp/widgets/type_pokemon_container.dart';
import 'package:palette_generator/palette_generator.dart';

class ContainerPokemonWidget extends StatefulWidget {
  Pokemon pokemon;
  String title;
  String urlImage;
  bool isFavorite;

  ContainerPokemonWidget({
    required this.title,
    required this.urlImage,
    required this.isFavorite,
    required this.pokemon,
  });

  @override
  State<ContainerPokemonWidget> createState() => _ContainerPokemonWidgetState();
}

class _ContainerPokemonWidgetState extends State<ContainerPokemonWidget> {
  late Future<Color?> _dominantColor;

  Future<Color?> _getDominantColor(String urlImage) async {
    final imageProvider = NetworkImage(urlImage);
    final paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

    return paletteGenerator.vibrantColor?.color;
  }

  @override
  void initState() {
    _dominantColor = _getDominantColor(widget.urlImage);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _dominantColor,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final Color dominantColor = snapshot.data ?? Colors.white;

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PokemonPage(
                  pokemon: widget.pokemon,
                  color: dominantColor,
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: dominantColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      child: titleText(widget.title),
                    ),
                    Icon(widget.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border)
                  ],
                ),
                Image.network(
                  widget.urlImage,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
