import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/features/searsh/views/widgets/no_search_body.dart';
import 'package:news/servises/search_servises.dart';
import 'package:news/utl/model/article_mdel.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: const NoSearchBody(),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () async {
      //       final Dio dio = Dio();
      //       final SearchNews searchNews = SearchNews(dio);

      //       String query = 'Egypt';

      //       try {
      //         List<ArticleModel> articles =
      //             await searchNews.searchNews(query: query);

      //         for (var article in articles) {
      //           log('Title: ${article.title}');
      //           log('Author: ${article.author}');
      //           log('Published At: ${article.publishedAt}');
      //           log('Description: ${article.description}');
      //           log('URL: ${article.url}\n');
      //         }
      //       } catch (e) {
      //         log('Error: $e');
      //       }
      //     },
      //     child: const Text('Click to Fetch News'),
      //   ),
      // ),
    );
  }
}
