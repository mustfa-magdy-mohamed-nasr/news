
import 'package:dio/dio.dart';
import 'package:news/utl/model/article_mdel.dart';

class SearchNews {
  final Dio dio;
  final String apiKey = '427c2f7261894e3eb9c23b29fc2fcbf0';
  final String baseUrl = 'https://newsapi.org/v2/everything';
  SearchNews(this.dio);
//  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=0b51ec9f69ea4e96ba13c1b121db5fc0&sortBy=popularity

  Future<List<ArticleModel>> searchNews({required String query}) async {
    try {
      final response =
          await dio.get("$baseUrl?q=$query&apiKey=$apiKey&sortBy=popularity");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> artecaleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        artecaleList.add(articleModel);
      }
      return articles.map((article) => ArticleModel.fromJson(article)).toList();
    } catch (e) {
      throw Exception('Failed to load news: $e');
    }
  }
}
