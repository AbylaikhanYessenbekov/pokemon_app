import 'package:flutter/material.dart';
import 'package:pokemon_app/bloc/search_bloc.dart';
import 'package:pokemon_app/bloc/search_event.dart';
import 'package:pokemon_app/bloc/search_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';

class DisplayPokemon extends StatelessWidget {
  final String pokemonName;
  final PokemonBloc _bloc = PokemonBloc();
  DisplayPokemon({Key? key, required this.pokemonName}) : super(key: key) {
    _bloc.add(SearchPokemonGetEvent(pokemonName: pokemonName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: BlocBuilder(
          bloc: _bloc,
          builder: (context, state) {
            if (state is PokemonLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PokemonLoadedState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15.0,),
                          Center(
                            child: Text(
                              '${(state.pokemonJson.name).toString()} ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Naruto',
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Text(
                            'BaseExperience:   ${(state.pokemonJson.baseExperience).toString()} ',
                            style: kNarutoTextStyle,
                          ),
                          Text(
                            'ID:   ${(state.pokemonJson.id).toString()} ',
                            style: kNarutoTextStyle,
                          ),Text(
                            'Order:   ${(state.pokemonJson.order).toString()} ',
                            style: kNarutoTextStyle,
                          ),Text(
                            'Weight:   ${(state.pokemonJson.weight).toString()} ',
                            style: kNarutoTextStyle,
                          ),
                          // Text('${state.weatherJson.weather.} ')
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              );
            }
            return const Center(child: Text("Not found"),);
          }),
    );
  }
}