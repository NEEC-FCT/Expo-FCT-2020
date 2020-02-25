import 'package:expo_fct_2020/Atividades/Atividade.dart';
import 'package:flutter/material.dart';

class GridDetails extends StatefulWidget {
  final Atividade curAlbum;

  GridDetails({@required this.curAlbum});

  @override
  GridDetailsState createState() => GridDetailsState();
}

class GridDetailsState extends State<GridDetails> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "image${widget.curAlbum.id}",
              child: FadeInImage.assetNetwork(
                placeholder: "assets/no_image.png",
                image: widget.curAlbum.url,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            OutlineButton(
              child: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
