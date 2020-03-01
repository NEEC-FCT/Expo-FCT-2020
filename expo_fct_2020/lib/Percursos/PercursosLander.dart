import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
              child:
                  //TODO estrair ficheiro independente
                  Column(
                children: <Widget>[
                  Spacer(),
                  new Text(
                    "Economia circular, Biotecnologia e Sustentabilidade",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Spacer(),
                  new Text(
                    "A Economia Circular assenta na redução, reutilização, recuperação e reciclagem de materiais e energia, evitando o desperdício de recursos e por isso com impacto positivo no Planeta. A Biotecnologia faz a interação entre a biologia e a tecnologia, com aplicação na indústria de produção de alimentos processados, de fármacos ou no controlo de qualidade. Estes conceitos e modelos são fundamentais para a sustentabilidade do Planeta, contribuindo para a satisfação das nossas necessidades no presente sem comprometer a capacidade de as gerações futuras satisfazerem as suas próprias necessidades.",
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/mapademo.PNG',
                    height: 200,
                    //  width: 100,
                  ),
                  Spacer(),
                  Container(
                    height: 150,
                    child: new Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Image.network(
                          "http://via.placeholder.com/288x188",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 10,
                      viewportFraction: 0.8,
                      scale: 0.9,
                    ),
                  ),
                  Spacer(),
                ],
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
