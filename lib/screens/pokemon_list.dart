import 'package:flutter/material.dart';
import 'package:pokemon_app_idea_latente/models/pokemon.dart';
import 'package:pokemon_app_idea_latente/services/get_pokemons.dart';
import 'package:webviewx/webviewx.dart'; // Importa el paquete webviewx

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  PokemonListState createState() => PokemonListState();
}

class PokemonListState extends State<PokemonList> {
  late WebViewXController webviewController;
  List<Pokemon> pokemones = [];

  @override
  void initState() {
    super.initState();
    _loadPokemons();
  }

  Future<void> _loadPokemons() async {
    List<Pokemon> pokemons = await fetchPokemon();
    setState(() {
      pokemones = pokemons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PokémonApp - Idea Latente',
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
      body: pokemones.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: WebViewX(
                    initialContent: _buildPokemonHtml(),
                    initialSourceType: SourceType.html,
                    onWebViewCreated: (controller) =>
                        webviewController = controller,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ],
            ),
    );
  }

  String _buildPokemonHtml() {
    String htmlContent = """
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
          body {
            font-family: Arial, sans-serif;
          }
          .pokemon-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
          }
          .pokemon-card {
            margin: 5px;
            padding: 5px;
            border: 1px solid #ddd;
            text-align: center;
          }
          .pokemon-card img {
            width: 100px;
            height: 100px;
          }
        </style>
      </head>
      <body>
        <div class="pokemon-container">
    """;

    for (var pokemon in pokemones) {
      htmlContent += """
        <div class="pokemon-card">
          <img src="${pokemon.imageUrl}" alt="${pokemon.name}">
          <p>${pokemon.name}</p>
        </div>
      """;
    }

    htmlContent += """
        </div>
      </body>
      </html>
    """;

    return htmlContent;
  }
}
