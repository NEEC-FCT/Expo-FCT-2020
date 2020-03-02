import 'package:expo_fct_2020/Percursos/Percurso1.dart';
import 'package:flutter/material.dart';

class IconTextTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.black, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 7,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Percurso temáticos (P1 a P7)"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.euro_symbol),
                text: "1",
              ),
              new Tab(
                icon: new Icon(Icons.data_usage),
                text: "2",
              ),
              new Tab(
                icon: new Icon(Icons.local_hospital),
                text: "3",
              ),
              new Tab(
                icon: new Icon(Icons.android),
                text: "4",
              ),
              new Tab(
                icon: new Icon(Icons.zoom_in),
                text: "5",
              ),
              new Tab(
                icon: new Icon(Icons.account_balance),
                text: "6",
              ),
              new Tab(
                icon: new Icon(Icons.security),
                text: "7",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            Percurso1(context),
            new Container(
              color: Colors.white,
              child: new Center(
                child: new Text(
                  " Inovação Digital e Big Data",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.white,
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
