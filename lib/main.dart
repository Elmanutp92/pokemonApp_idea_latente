import 'package:flutter/material.dart';
import 'package:pokemon_app_idea_latente/screens/pokemon_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokémon App - Idea Latente',
      home: PokemonList(),
    );
  }
}
