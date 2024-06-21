import 'package:flutter/material.dart';
import 'package:news/features/category/presontion/views/widgets/grid_view_body.dart';
import 'package:news/generated/l10n.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: BarTitelSubtitle(
              title: S.of(context).all_Category,
              subtitle: S.of(context).news_and_podcast,
            ),
          ),
        ),
        const GridViewBody(),
      ],
    );
  }
}
