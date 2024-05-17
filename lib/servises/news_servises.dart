import 'package:dio/dio.dart';
import 'package:news/utl/model/article_mdel.dart';

class NewsServises {
  final Dio dio;
  final String apiKey = '2b91e31f819c4512a13aa57726304251';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';
  NewsServises(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response =
          await dio.get('$baseUrl?country=us&apiKey=$apiKey&category=business');
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
/**Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get('$baseUrl?country=us&apiKey=$apiKey&category=$category');
      List<dynamic> articles = response.data['articles'];
      List<ArticleModel> articleList = articles.map((article) => ArticleModel.fromJson(article)).toList();
      return articleList;
    } catch (e) {
      throw Exception('Failed to fetch news: $e');
    }
  }

  esponse response =
          await dio.get('$baseUrl?country=us&apiKey=$apiKey&category=business');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
    } catch (e) {
      throw Exception('Failed to fetch news: $e');
    }
  }
} */