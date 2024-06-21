import 'package:flutter/material.dart';
import 'package:news/features/news_view/presotion/views/widgets/news_view_body.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: NewsViewBody(articleModel: articleModel)));
  }
}
