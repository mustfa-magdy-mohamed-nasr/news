import 'package:flutter/material.dart';
import 'package:news/features/category/views/widgets/grid_view_body.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: BarTitelSubtitle(
              title: 'All Category',
              subtitle: 'News and podcast',
            ),
          ),
        ),
        GridViewBody(),
      ],
    );
  }
}
