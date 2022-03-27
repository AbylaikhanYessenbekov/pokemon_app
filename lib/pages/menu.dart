import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pika3_bg.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      // primary: color,
                      // onSurface: Colors.red,
                      ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/search_pokemon');
                  },
                  child: const Text(
                    "Search for a pokemon",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Naruto',
                      fontSize: 25.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    // onSurface: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/random_pokemon');
                  },
                  child: const Text(
                    "Random pokemon",
                    style: TextStyle(fontFamily: 'Naruto', fontSize: 25.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
