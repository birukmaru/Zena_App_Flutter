import 'dart:convert';

import 'package:zena_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-09-07&sortBy=publishedAt&apiKey=2566886e115143cfbafc3b87fddf75b6";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModle = ArticleModel(
            title: element["title"],
            description: element['description'],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element['author'],
          );
          news.add(articleModle);
        }
      });
    }
  }
}
