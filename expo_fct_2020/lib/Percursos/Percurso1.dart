import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

String descricao =
    "A Economia Circular assenta na redução, reutilização, recuperação e reciclagem de materiais e energia, evitando o desperdício de recursos e por isso com impacto positivo no Planeta.\n" +
        "A Biotecnologia faz a interação entre a biologia e a tecnologia, com aplicação na indústria de produção de alimentos processados, de fármacos ou no controlo de qualidade. \n" +
        "Estes conceitos e modelos são fundamentais para a sustentabilidade do Planeta, contribuindo para a satisfação das nossas necessidades no presente sem comprometer a capacidade de as gerações futuras satisfazerem as suas próprias necessidades.";

Widget Percurso1(BuildContext context) {
  double width = MediaQuery.of(context).size.width;


  String returnURL(int index){
    switch(index){

      case 0:

        break;
      default:
        return "";
    }
  }
  return new Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 4),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Descrição:",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)))),
        ExpandablePanel(
          header: new Text(
            "Economia circular, Biotecnologia e Sustentabilidade",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          collapsed: Text(
            descricao,
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Text(
            descricao,
            softWrap: true,
          ),
          tapHeaderToExpand: true,
          hasIcon: true,
        ),
        Spacer(),
        Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Localização:",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)))),
        Image.asset(
          'assets/mapademo.PNG',
          height: 200,
          //  width: 100,
        ),
        Spacer(),
        SizedBox(
          width: width * 0.90,
          child: new RaisedButton(
            onPressed: () => print("Button Pressed"),
            child: new Text("Começar"),
          ),
        ),
        Spacer(),
        Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Eventos:",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)))),
        Container(
          height: 150,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DEC/foto_7copy.jpg",
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
  );
}
