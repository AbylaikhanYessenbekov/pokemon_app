import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:pokemon_app/models/pokemon.dart';



class ApiProvider {
  Future<dynamic> requestSearchPokemon(String pokemonName) async {
    try {
      final response = await http.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemonName'),
      );
      final pokemonModel = pokemonFromJson(response.body);
      return pokemonModel;
    } catch (e) {
      // log(e.toString());
      return e;
    }
  }

  Future<dynamic> requestRandomPokemon() async {
    try {
      int randomInt = Random().nextInt(100);
      final response = await http.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/$randomInt'),
      );
      final pokemonModel = pokemonFromJson(response.body);
      return pokemonModel;
    } catch (e) {
      // log(e.toString());
      return e;
    }
  }


}