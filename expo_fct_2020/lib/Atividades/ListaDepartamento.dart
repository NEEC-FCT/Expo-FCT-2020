import 'dart:async';
import 'dart:convert';

import 'package:expo_fct_2020/Atividades/Departamentos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../HexColor.dart';
import 'Atividade.dart';
import 'DetalhasAtividade.dart';
import 'GridDetails.dart';
import 'Services.dart';

class GridViewDemo extends StatefulWidget {
  GridViewDemo({Departamento lesson}) : super();

  @override
  GridViewDemoState createState() => GridViewDemoState();
}

class GridViewDemoState extends State<GridViewDemo> {
  //
  StreamController<int> streamController = new StreamController<int>();

  String categoriesJson = '{}';

  List<dynamic> products;
  List<dynamic> categories;

  @override
  initState() {
    super.initState();

    Map<String, dynamic> decodedCategories = json.decode(categoriesJson);
    categories = decodedCategories['categories'];
  }

  gridview(AsyncSnapshot<List<Atividade>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map(
          (album) {
            return GestureDetector(
              child: GridTile(
                child: AtividadeCell(album),
              ),
              onTap: () {
                goToDetailsPage(context, album);
              },
            );
          },
        ).toList(),
      ),
    );
  }

  goToDetailsPage(BuildContext context, Atividade album) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => GridDetails(
          curAlbum: album,
        ),
      ),
    );
  }

  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Text('Atividades', style: TextStyle(fontSize: 26))),
          Flexible(
            flex: 8, // 20%
            child: FutureBuilder<List<Atividade>>(
              future: Services.getPhotos(),
              builder: (context, snapshot) {
                // not setstate here
                //
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                }
                //
                if (snapshot.hasData) {
                  streamController.sink.add(snapshot.data.length);
                  // gridview
                  return gridview(snapshot);
                }

                return circularProgress();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}
