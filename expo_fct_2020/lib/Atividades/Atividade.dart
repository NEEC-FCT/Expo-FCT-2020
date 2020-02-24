class Atividade {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Atividade({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Atividade.fromJson(Map<String, dynamic> json) {
    return Atividade(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
