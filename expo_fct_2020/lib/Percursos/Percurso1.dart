import 'package:expandable/expandable.dart';
import 'package:expo_fct_2020/Percursos/Rotas/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

String descricao =
    "A Economia Circular assenta na redução, reutilização, recuperação e reciclagem de materiais e energia, evitando o desperdício de recursos e por isso com impacto positivo no Planeta.\n" +
        "A Biotecnologia faz a interação entre a biologia e a tecnologia, com aplicação na indústria de produção de alimentos processados, de fármacos ou no controlo de qualidade. \n" +
        "Estes conceitos e modelos são fundamentais para a sustentabilidade do Planeta, contribuindo para a satisfação das nossas necessidades no presente sem comprometer a capacidade de as gerações futuras satisfazerem as suas próprias necessidades.";

Widget Percurso1(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  String returnText(int index) {
    switch (index) {
      case 0:
        return "Cidade Sustentável";
        break;
      case 1:
        return "Laser Solar";
        break;
      case 2:
        return "Biorefinarias de resíduos";
        break;
      case 3:
        return "\“Alimentos versus Antibióticos\”";
        break;
      case 4:
        return "Riqueza hidromineral de Portugal";
        break;
      case 5:
        return "Vem explorar os efeitos da poluição no solo e em ambiente subterrâne";
        break;
      case 6:
        return "À Descoberta da Estrutura 3D das Proteínas!";
        break;
      case 7:
        return "Produção de biopolímeros";
        break;
      case 8:
        return "Materiais e Sustentabilidade";
        break;
      case 9:
        return "Tecnologias Wearable sustentáveis";
        break;
      case 10:
        return "Belos Micróbios - vem conhecer uma coleção de culturas!";
        break;
      default:
        return "";
    }
  }

  String returnURL(int index) {
    switch (index) {
      case 0:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DEC/foto_7copy.jpg";
        break;
      case 1:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DF/untitled_1.png";
        break;
      case 2:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/biorefinarias_de_residuos.png";
        break;
      case 3:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DCTB/alimentos_versus_antibioticos.jpg";
        break;
      case 4:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DCT/riqueza_hidromineral_dct_ha.jpg";
        break;
      case 5:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/p1_sofia_barbosa.jpg";
        break;
      case 6:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/p1_act1_estrutura_proteinas.png";
        break;
      case 7:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/p1_act2_producao_biopolimeros.png";
        break;
      case 8:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/p1_dcm_materiais-e-sustentabilidade.jpg";
        break;
      case 9:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/p1_dcm_tecnologias-wearable-sustentaveis.jpg";
        break;
      case 10:
        return "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/Percurso%201/belosmicrobios.png";
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
        Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 4),
            child: ExpandablePanel(
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
            )),
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
          height: 130,
          width: width * 0.90,
        ),
        Spacer(),
        SizedBox(
          width: width * 0.90,
          child: new RaisedButton(
            color: Colors.blue,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
            child: new Text("Começar",
                style: TextStyle(color: Colors.white, fontSize: 18)),
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
          height: 200,
          child: new Swiper(
            layout: SwiperLayout.DEFAULT,
            itemWidth: 200.0,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Spacer(),
                  Container(
                    child: Text( returnText(index) ,
                        textAlign: TextAlign.center ,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                  Spacer(),
                  Center(
                    child: Image.network(
                      returnURL(index),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Spacer(),

                ],
              );
            },
            itemCount: 11,
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ),
        Spacer(),
      ],
    ),
  );
}
