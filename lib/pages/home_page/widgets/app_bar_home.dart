import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
         /* Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 13, right: 5),
                  child: IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {

                    },
                  ),
                )
              ],
            ),
          ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  'Pokémon',
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
            ],
          )
        ],
      ),
      height: 120,
    );
  }
}
