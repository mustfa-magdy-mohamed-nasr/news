import 'package:flutter/material.dart';
import 'package:news/features/category/views/widgets/category_item.dart';

class GridViewBody extends StatelessWidget {
  const GridViewBody({
    super.key,
  });
  final List<String> image = const [
    'assets/images/category/interior.jpg',
    'assets/images/category/art.jpg',
    'assets/images/category/entertainment.jpg',
    'assets/images/category/fashion.jpg',
    'assets/images/category/food.jpg',
    'assets/images/category/health1.jpg',
    'assets/images/category/politics.jpg',
    'assets/images/category/science.jpg',
    'assets/images/category/sports.jpg',
    'assets/images/category/technology.jpg',
    'assets/images/category/business.jpg',
    'assets/images/category/travel.jpg',
  ];

  final List<String> imageTexts = const [
    'Interior',
    'Art',
    'Entertainment',
    'Fashion',
    'Food',
    'Health',
    'Politics',
    'Science',
    'Sports',
    'Technology',
    'Business',
    'Travel',
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
            image: image[index],
            imageTexts: imageTexts[index],
          );
        },
        childCount: image.length,
      ),
    );
  }
}
