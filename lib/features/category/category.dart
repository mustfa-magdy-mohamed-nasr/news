import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/category/views/widgets/grid_view_body.dart';
import 'package:news/utl/cubits/get_category/get_category_cubit.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
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
