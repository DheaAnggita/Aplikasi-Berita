import 'dart:convert';
import 'package:http/http.dart';
import '../model/articlemodel.dart';

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?country=id&category=technology&apiKey=51fe5e2a53ed4e428c6e077135480084";

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);
    //jika status code 200 maka berhasil
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      //ambil artikel dari json
      List<Article> articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}

