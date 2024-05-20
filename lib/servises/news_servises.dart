import 'package:dio/dio.dart';
import 'package:news/utl/model/article_mdel.dart';

class NewsServises {
  final Dio dio;
  final String apiKey = '0b51ec9f69ea4e96ba13c1b121db5fc0';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';
  NewsServises(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio
          .get('$baseUrl?country=us&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
