import 'package:flutter/material.dart';
import 'package:news/features/news_view/views/widgets/news_view_body.dart';
import 'package:news/utl/model/article_mdel.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    
    return NewsViewBody(articleModel: articleModel);
  }
}

