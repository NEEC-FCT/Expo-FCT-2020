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
      nome: "Inteligência artificial",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DI/inteligencia_artificial_copy.png",
      time: "12:00-16:00"
  ),
  Actividade(
      nome: "NanoRobots",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DI/nanorobots.jpg",
      time: "09:00-17:00"
  ),
  Actividade(
      nome: "Matemática e Logística: amigas ou inimigas?",
      imageUrl: "https://www.expo.fct.unl.pt/sites/www.expo.fct.unl.pt/files/imagecache/l160/imagens/actividades/DM/matematica_e_logistica_amigas_ou_inimigas.jpg",
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