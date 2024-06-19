import 'package:dio/dio.dart';
import 'package:news/utl/model/article_mdel.dart';

class NewsServises {
  final Dio dio;
  final String apiKey = '427c2f7261894e3eb9c23b29fc2fcbf0';
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
