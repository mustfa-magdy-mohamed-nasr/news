import 'package:flutter/material.dart';


class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
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
