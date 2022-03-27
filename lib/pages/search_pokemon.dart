import 'package:flutter/material.dart';

import 'display_pokemon.dart';

class SearchPokemon extends StatelessWidget {
  const SearchPokemon({Key? key}) : super(key: key);
  static final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _controller,
              style: const TextStyle(color: Colors.black, fontFamily: 'Naruto',),
              decoration: const InputDecoration(
                labelText: 'Enter a name of a pokemon',
                labelStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            TextButton(
              onPressed: () {
                if(_controller.text != '') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPokemon(pokemonName: _controller.text,),
                    ),
                  );
                }
              },
              child: const Text('Search', style: TextStyle(
                color: Colors.black,
                fontFamily: 'Naruto',
                fontSize: 25.0,
              ),),
            ),
          ],
        ),
      ),

    );
  }
}
