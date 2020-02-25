import 'dart:convert';

import 'package:expo_fct_2020/Atividades/Atividade.dart';
import 'package:http/http.dart' as http;

class Services {
  static const String url =
      "http://jortec18app.neec-fct.com/jortec2020/Patrocinios.json";

  static Future<List<Atividade>> getPhotos() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Atividade> list = parsePhotos(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Atividade> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Atividade>((json) => Atividade.fromJson(json)).toList();
  }
}
