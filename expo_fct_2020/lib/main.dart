import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expo FCT 2020',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 2;

  //create all the pages
  Widget _showPage = Text('Demo FCT');


  Widget _pageChooser(int page , double width ,  double height) {
    switch (page) {

      case 4:
        return new Expanded(
          child: WebView(
            initialUrl: 'https://expofct.neec-fct.com/cursos/',
            javascriptMode: JavascriptMode.unrestricted,
          ));
        break;
      default:
        print("Upps.. out of bouds");
        return new Text('Demo APP Expo FCT');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _showPage,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
          setState(() {
            print("Tapped on " + currentIndex.toString());
            _showPage = _pageChooser(currentIndex , width , height);
          });

        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.schedule),
            title: Text('Horário'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info_outline),
            title: Text('Atividades'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.map),
            title: Text(
              'Mapa',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.transfer_within_a_station),
            title: Text('Percursos'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_balance),
            title: Text(
              'Cursos',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
