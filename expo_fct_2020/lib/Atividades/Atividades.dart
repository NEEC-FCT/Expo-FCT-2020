import 'package:expo_fct_2020/Atividades/Departamentos.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import 'ListaDepartamento.dart';

class Atividades extends StatefulWidget {
  Atividades({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AtividadesPageState createState() => _AtividadesPageState();
}

class _AtividadesPageState extends State<Atividades> {
  List lessons;

  @override
  void initState() {
    lessons = getDepartamentos();
    super.initState();
  }

  void onDonePress(int id) async {
    // Do what you want

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("atividades", id);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }


  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Departamento lesson) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Image.asset(lesson.icon),
          ),
          title: Text(
            lesson.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                    padding: new EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 5.0),
                    child: Text(lesson.level,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            print("ID is: " + lesson.title);

            onDonePress( lesson.id);


          },
        );


    Card makeCard(Departamento lesson) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Text('Departamentos', style: TextStyle(fontSize: 26))),
        Expanded(
          // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: lessons.length,
            itemBuilder: (BuildContext context, int index) {
              return makeCard(lessons[index]);
            },
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: makeBody,
    );
  }
}




List getDepartamentos() {
  return [
    Departamento(
        id: 0,
        title: "Departamento de Engenharia Electrotécnica",
        icon: 'assets/departamentos/circuit.png',
        level: "Edifício X"),
    Departamento(
        id: 1,
        title: "Departamento Engenharia do Ambiente",
        icon: 'assets/departamentos/enviroment.png',
        level: "Edifício Departamental"),
    Departamento(
        id: 2,
        title: "Departamento de Ciência dos Materiais",
        icon: 'assets/departamentos/molecular.png',
        level: "Edifício Departamental"),
    Departamento(
        id: 3,
        title: "Departamento de Conservação e Restauro",
        icon: 'assets/departamentos/museum.png',
        level: "Edifício Departamental"),
    Departamento(
        id: 4,
        title: "Departamento de Ciências Sociais Aplicadas",
        icon: 'assets/departamentos/group.png',
        level: "Edifício VII"),
    Departamento(
        id: 5,
        title: "Departamento de Ciências da Terra",
        icon: 'assets/departamentos/world.png',
        level: "Edifício VII"),
    Departamento(
        id: 6,
        title: "Departamento de Ciências e Tecnologia da Biomassa",
        icon: 'assets/departamentos/biomass.png',
        level: "Edifício Departamental"),
    Departamento(
        id: 7,
        title: "Departamento de Ciências da Vida",
        icon: 'assets/departamentos/human.png',
        level: "Edifício VII"),
    Departamento(
        id: 8,
        title: "Departamento de Engenharia Civil",
        icon: 'assets/departamentos/america.png',
        level: "Edifício IX"),
    Departamento(
        id: 9,
        title: "Departamento de Engenharia Mecânica e Industrial",
        icon: 'assets/departamentos/factory.png',
        level: "Edifício VIII"),
    Departamento(
        id: 10,
        title: "Departamento de Física",
        icon: 'assets/departamentos/space.png',
        level: "Edifício I"),
    Departamento(
        id: 11,
        title: "Departamento de Química",
        icon: 'assets/departamentos/lab.png',
        level: "Edifício Departamental"),
    Departamento(
        id: 12,
        title: "Departamento de Matemática",
        icon: 'assets/departamentos/calculator.png',
        level: "Edifício VII"),
    Departamento(
        id: 13,
        title: "Departamento de Informática",
        icon: 'assets/departamentos/laptop.png',
        level: "Edifício II"),
  ];
}
