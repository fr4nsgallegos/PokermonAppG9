// class PokemonApi {
//   static const String pokemones =
//       "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json?fbclid=IwZXh0bgNhZW0CMTAAAR1NvRhYdIz7HvFIbjRRZryG-5j4516YvSxaCzm4aH6RynNyp9tLZLTGz9Q_aem_OC7UyN2S8ri_YUImzNS2_g";
// }

import 'package:dio/dio.dart';
import 'package:pokemonapp/models/pokemon_model_list.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_api.g.dart';

@RestApi(
    baseUrl:
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("pokedex.json")
  Future<dynamic> getPokemonList();
}
