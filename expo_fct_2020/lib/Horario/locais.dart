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
      nome: "Actividade 1 bueda grande e bueda fixe",
      imageUrl: "https://www.rosssolar.com/wp-content/uploads/2017/08/image-placeholder.jpg",
      time: "12:00-16:00"
  ),
  Actividade(
      nome: "Actividade 2",
      imageUrl: "https://www.rosssolar.com/wp-content/uploads/2017/08/image-placeholder.jpg",
      time: "13:00"
  ),
  Actividade(
      nome: "Actividade 3",
      imageUrl: "https://www.rosssolar.com/wp-content/uploads/2017/08/image-placeholder.jpg",
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