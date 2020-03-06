import 'package:expo_fct_2020/Horario/actividade.dart';

class Local {
  int id;
  String nome;
  String imageUrl;
  //Add link to google maps?
  List<Actividade> actividades;

  Local({
    this.nome,
    this.imageUrl,
    this.actividades
  });
}

List<Actividade> actividades = [
  Actividade(
      nome: "Arcade",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DEE/arcade.jpg",
      time: "12:00-16:00"
  ),
  Actividade(
      nome: "Supercondutividade",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DEE/supercondutores.png",
      time: "12:00-16:00"
  ),
  Actividade(
      nome: "Sistemas electrónicos com FPGAs",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DEE/sistemas-electronicos.png",
      time: "14:00"
  ),
];

List<Local> locais = [
  Local(
      nome: "Departamento de Engenharia Electrotécnica",
      actividades: actividades
  ),
  Local(
      nome: "Departamento de Engenharia do Ambiente",
      actividades: actividades
  ),  Local(
      nome: "Departamento de Ciência dos Materiais",
      actividades: actividades
  ),
  Local(
      nome: "Departamento de Conservação e Restauro",
      actividades: actividades
  ),
  Local(
      nome: "Departamento de Ciências Sociais Aplicadas",
      actividades: actividades
  ),
  Local(
      nome: "Departamento de Ciências da Terra",
      actividades: actividades
  ),

];