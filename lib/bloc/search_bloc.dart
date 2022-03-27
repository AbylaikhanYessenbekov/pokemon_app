import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:pokemon_app/bloc/search_event.dart';
import 'package:pokemon_app/bloc/search_state.dart';
import 'package:pokemon_app/models/pokemon.dart';
import '../services/services.dart';



class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonInitialState());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    if (event is SearchPokemonGetEvent) {
      yield PokemonLoadingState();
      try {
        Pokemon _pokemonModel =
        await ApiProvider().requestSearchPokemon(event.pokemonName);
        yield PokemonLoadedState(pokemonJson: _pokemonModel);
      } catch (e) {
        yield PokemonErrorState();
      }
    }
    else if(event is RandomPokemonGetEvent) {
      yield PokemonLoadingState();
      try{
        Pokemon _pokemonModel = await ApiProvider().requestRandomPokemon();
        yield PokemonLoadedState(pokemonJson: _pokemonModel);
      } catch(e) {
        yield PokemonErrorState();
      }
    }
  }
}