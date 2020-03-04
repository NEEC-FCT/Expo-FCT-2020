import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MapPageState();
  }
}

class _MapPageState extends State<Map> {
  WebViewController _myController;

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.0),
        height: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "assets/edificios/mateinf.jpg",
                  "Edifício II",
                  "Dep. de Materiais\nDep. de Informática"),
            ),
            SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "assets/edificios/qui.jpg",
                  "Edifício Departamental",
                  "Dep. de Química"),
            ),
            SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "assets/edificios/eletro.jpg",
                  "Edifício X",
                  "Dep. de Electrotécnia"),
            ),
            SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "assets/edificios/mecege.jpg",
                  "Edifício VIII",
                  "Dep. de Mecânica e\nGestão Industrial"),
            ),
            SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "assets/edificios/biblio.jpg",
                  "Biblioteca",
                  "Biblioteca"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, String buildingName, String departmentName) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 8.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x80222222),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image.asset(
                        _image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(buildingName, departmentName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String buildingName, String departmentName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            buildingName,
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 25.0),
        Container(
            child: Text(
          departmentName,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return WebView(
      initialUrl:
          'https://www.google.com/maps/d/viewer?mid=1LC7hMeFmnZ8cj4XGiMAEBam7WHZZIn3k&ll=38.66073135349911%2C-9.205763350000097&z=17',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        _myController = controller;
      },
      onPageFinished: (url) {
        _myController.loadUrl("javascript:(function() { " +
            "document.getElementById('gbr').style.display='none'; } )()");
        _myController.loadUrl("javascript:(function() { " +
            "document.getElementById('watermark').style.display='none'; } )()");
        _myController.loadUrl("javascript:(function() { " +
            "document.getElementsByClassName('mU4ghb-N4imRe-yePe5c N4imRe-yePe5c')[0].style.visibility='hidden'; } )()");
        _myController.loadUrl("javascript:(function() { " +
            "document.getElementsByClassName('nJjxad-bMcfAe-haAclf nJjxad-HzV7m nJjxad-bMcfAe-hJDwNd')[0].style.visibility='hidden'; } )()");

        _myController.loadUrl("javascript:(function() { " +
            "document.getElementsByClassName('yePe5c-haAclf yePe5c-HzV7m yePe5c-purZT')[0].style.visibility='hidden'; } )()");
      },
    );
  }
}
