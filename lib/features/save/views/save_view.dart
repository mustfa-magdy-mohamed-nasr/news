import 'package:flutter/material.dart';
import 'package:news/features/searsh/views/widgets/item_Search_view.dart';
import 'package:news/utl/model/article_mdel.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'All Item...',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ),
        // SliverList(
        //     delegate: SliverChildBuilderDelegate((context, index) {
        //   return const ItemSearchView(articleModel: ArticleModel[],); // تمرير حالة النص هنا
        // }, childCount: 10)),
      ],
    );
  }
}
