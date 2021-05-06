import 'package:flutter/material.dart';
import 'package:pokedex/consts/consts_app.dart';
import 'package:pokedex/pages/home_pages/widgets/app_bar_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    child: Container(
                      child: ListView(
                        children:<Widget> [
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                          ListTile(
                            title: Text('Pokemon'),
                          ),
                        ],
                      ),
                    ))

              ],
            ),
          ),
        ],
      ),
    );
  }
}
