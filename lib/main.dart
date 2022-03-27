import 'package:flutter/material.dart';
import 'package:pokemon_app/pages/random_pokemon.dart';
import 'package:pokemon_app/pages/search_pokemon.dart';

import 'pages/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Menu(),
        '/search_pokemon': (context) => const SearchPokemon(),
        '/random_pokemon': (context) => RandomPokemon(),
      },
      initialRoute: '/',
    );
  }
}
