import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MapPageState();
  }
}

class _MapPageState extends State<Map> {
  // f45d27
  // f5851f
  WebViewController _myController;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: WebView(
              initialUrl:
                  'https://www.google.com/maps/d/viewer?mid=1LC7hMeFmnZ8cj4XGiMAEBam7WHZZIn3k&ll=38.66073135349911%2C-9.205763350000097&z=17',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                _myController = controller;
              },
              onPageFinished: (url) {
                _myController.loadUrl("javascript:(function() { " +
                    "document.getElementById('gbr').style.display='none';})()");
              },
            )),
          ],
        ),
      ),
    );
  }
}
