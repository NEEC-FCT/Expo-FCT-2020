import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cursos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CursosState();
  }
}

class _CursosState extends State<Cursos> {
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: WebView(
              initialUrl: 'https://expofct.neec-fct.com/cursos/',
              javascriptMode: JavascriptMode.unrestricted,
            )),
          ],
        ),
      ),
    );
  }
}
