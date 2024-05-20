import 'package:flutter/material.dart';
import 'package:news/features/category/views/widgets/category_item.dart';
import 'package:news/utl/model/categry_model.dart';

class GridViewBody extends StatelessWidget {
  GridViewBody({
    super.key,
  });
  // ignore: non_constant_identifier_names
  final List<CategoryModel> categorylist = [
    CategoryModel(
      image: 'assets/images/category/entertainment.jpg',
      name: 'entertainment', //
    ),
    CategoryModel(
      image: 'assets/images/category/health1.jpg',
      name: 'health', //
    ),
    CategoryModel(
      image: 'assets/images/category/politics.jpg',
      name: 'politics',
    ),
    CategoryModel(
      image: 'assets/images/category/science.jpg',
      name: 'science', //
    ),
    CategoryModel(
      image: 'assets/images/category/sports.jpg',
      name: 'sports', //
    ),
    CategoryModel(
      image: 'assets/images/category/technology.jpg',
      name: 'technology', //
    ),
    CategoryModel(
      image: 'assets/images/category/business.jpg',
      name: 'business', //
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CategoryItem(
            category: categorylist[index],
          );
        },
        childCount: categorylist.length,
      ),
    );
  }
}
