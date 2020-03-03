import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'actividade.dart';
import 'locais.dart';
import 'package:flutter/material.dart';

class Horario extends StatefulWidget {
  @override
  _HorarioState createState() => _HorarioState();
}

class _HorarioState extends State<Horario> {
  Widget _buildSearchBtn(int index, String nome) {
    return Container(
      //add Gesture
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: (index == 0)
          ? BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(8.0))
          : BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.search,
            color: index == 0 ? Colors.white : Color.fromRGBO(32, 33, 42, 1.0),
            size: 20.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            nome,
            style: TextStyle(
                color:
                    index == 0 ? Colors.white : Color.fromRGBO(32, 33, 42, 1.0),
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _buildSearchBtns(List<Local> locais) {
    List<Widget> btns = List<Widget>();
    btns.add(_buildSearchBtn(0, "Todos"));
    for (int i = 0; i < locais.length; i++) {
      btns.add((_buildSearchBtn(i + 1, "D." + locais[i].nome.substring(12))));
      //Alterar a abreviação
    }
    return Container(
      height: 50.0,
      child: ListView(
        padding: const EdgeInsets.only(left: 16.0, right: 8.0),
        scrollDirection: Axis.horizontal,
        children: btns,
      ),
    );
  }

  Widget _buildActividadesCarrosel(Local local) {
    List<Actividade> actividades = local.actividades;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 5.0, bottom: 5.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(local.nome,
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
              Text("Ver todas",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 230.0,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: actividades.length,
            itemBuilder: (BuildContext context, int index) {
              Actividade actividade = actividades[index];
              return Container(
                margin: const EdgeInsets.all(10.0),
                width: 150.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child:Image(
                          image: NetworkImage(actividade.imageUrl),
                        ),
                      )
                    ),
                    Container(
                      height: 60.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 0.0,
                          ),
                          Text(actividade.nome),
                          Text(actividade.time,
                            style: TextStyle(
                              color: Color.fromRGBO(100, 100, 100, 0.9),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      )
                    )
                  ],
                )
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildActividadesCarroseis(List<Local> locais) {
    List<Widget> carroseis = List<Widget>();
    for (Local local in locais) {
      carroseis.add(_buildActividadesCarrosel(local));
    }
    return Column(
      children: carroseis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 100.0),
              child: Text(
                "Horário",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            _buildSearchBtns(locais),
            SizedBox(
              height: 20.0,
            ),
            _buildActividadesCarroseis(locais),
          ],
        ),
      ),
    );
  }
}
