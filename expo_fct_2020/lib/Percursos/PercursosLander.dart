import 'package:flutter/material.dart';

class IconTextTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.white, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 7,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Percurso temáticos (P1 a P7)"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
                text: "1",
              ),
              new Tab(
                icon: new Icon(Icons.map),
                text: "2",
              ),
              new Tab(
                icon: new Icon(Icons.person),
                text: "3",
              ),
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
                text: "4",
              ),
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
                text: "5",
              ),
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
                text: "6",
              ),
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
                text: "7",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              color: Colors.deepOrangeAccent,
              child: new Center(
                child: new Text(
                  "Economia circular, Biotecnologia e Sustentabilidade",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  " Inovação Digital e Big Data",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
