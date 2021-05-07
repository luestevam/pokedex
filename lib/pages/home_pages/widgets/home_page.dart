import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/consts/consts_app.dart';
import 'package:pokedex/pages/home_pages/widgets/app_bar_home.dart';
import 'package:pokedex/stores/pokeapi_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 PokeApiStore pokeApiStore;
  @override
  void initState(){
    super.initState();
    PokeApiStore pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokemonList();
  }


  Widget build(BuildContext context) {
    PokeApiStore pokeApiStore = PokeApiStore();
    double screewidth = MediaQuery.of(context).size.width;
    double StatusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 4),
            left: screewidth - (240 / 1.6),
            child: Opacity(
              child: Image.asset(
                ConstsApp.blackPokeball,
                height: 240,
                width: 240,
              ),
              opacity: 0.1,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: StatusWidth,
                ),
                AppBarHome(),
                Expanded(
                  child: Container(child: Observer(
                    builder: (BuildContext context) {
                      return (pokeApiStore.pokeAPI != null)
                          ? ListView.builder(
                              itemBuilder: (context, index) {
                                return ListTile();
                              },
                            )
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    },
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
