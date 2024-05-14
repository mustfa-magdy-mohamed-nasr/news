import 'package:dio/dio.dart';
import 'package:news/utl/model/article_mdel.dart';

class NewsServises {
  final Dio dio;
  final String apiKey = '2b91e31f819c4512a13aa57726304251';
  final String dimin = 'https://newsapi.org/v2/top-headlines';
  NewsServises(this.dio);
  getNews(String category) async {
    // ignore: unused_local_variable
    Response response =
        await dio.get('$dimin?country=us&apiKey=$apiKey&category=business');
    Map<String, dynamic> jsonData = response.data;
    NewsArticleModel(
      author: jsonData['author'],
      title: jsonData['title'],
      description: jsonData['description'],
      url: jsonData['url'],
      urlToImage: jsonData['urlToImage'],
      publishedAt: DateTime.parse(jsonData['publishedAt']),
      content: jsonData['content'],
    );
  }
}
