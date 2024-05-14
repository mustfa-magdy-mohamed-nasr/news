import 'package:flutter/material.dart';
import 'package:news/features/home_view/views/widgets/item_home_view.dart';

class BreakingListHorizintal extends StatelessWidget {
  const BreakingListHorizintal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return const ItemHomeView(); // تمرير حالة النص هنا
    }, childCount: 5));
  }
}
