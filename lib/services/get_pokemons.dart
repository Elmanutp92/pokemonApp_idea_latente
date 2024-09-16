import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pokemon_app_idea_latente/models/pokemon.dart';

Future<List<Pokemon>> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    // Crear una lista de futuros que obtendrán los detalles de cada Pokémon en paralelo
    List<Future<Pokemon>> futures =
        (data['results'] as List).map((pokemon) async {
      final pokemonResponse = await http.get(Uri.parse(pokemon['url']));
      if (pokemonResponse.statusCode == 200) {
        return Pokemon.fromJson(jsonDecode(pokemonResponse.body));
      } else {
        throw Exception('Failed to fetch Pokémon details');
      }
    }).toList();

    // Esperamos a que todas las solicitudes terminen
    return Future.wait(futures);
  } else {
    throw Exception('Failed to fetch Pokémon list');
  }
}
