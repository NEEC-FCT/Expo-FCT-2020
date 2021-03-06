
import 'package:expo_fct_2020/Percursos/Rotas/rounded_button.dart';
import 'package:flutter/material.dart';

import 'air_asia_bar.dart';
import 'content_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AirAsiaBar(height: 210.0),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
              child: new Column(
                children: <Widget>[
                  Expanded(child: ContentCard()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
