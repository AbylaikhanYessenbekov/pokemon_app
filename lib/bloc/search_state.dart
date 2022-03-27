import 'package:pokemon_app/models/pokemon.dart';

abstract class PokemonState {}

class PokemonInitialState extends PokemonState {}

class PokemonLoadedState extends PokemonState {
  Pokemon pokemonJson;
  PokemonLoadedState({required this.pokemonJson});
}

class PokemonLoadingState extends PokemonState {}

class PokemonErrorState extends PokemonState {}