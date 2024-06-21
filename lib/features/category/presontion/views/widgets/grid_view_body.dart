import 'package:flutter/material.dart';
import 'package:news/features/category/presontion/views/widgets/category_item.dart';
import 'package:news/features/category/data/model/categry_model.dart';
import 'package:news/generated/l10n.dart';

class GridViewBody extends StatelessWidget {
  const GridViewBody({Key? key}) : super(key: key);

  // This method generates the category list with localized names
  List<CategoryModel> generateCategoryList(BuildContext context) {
    return [
      CategoryModel(
        image: 'assets/images/category/entertainment.jpg',
        getName: 'entertainment',
        nakName: S.of(context).entertainment,
      ),
      CategoryModel(
        image: 'assets/images/category/health1.jpg',
        getName: 'health',
        nakName: S.of(context).health,
      ),
      CategoryModel(
        image: 'assets/images/category/politics.jpg',
        getName: 'politics',
        nakName: S.of(context).politics,
      ),
      CategoryModel(
        image: 'assets/images/category/science.jpg',
        getName: 'science',
        nakName: S.of(context).science,
      ),
      CategoryModel(
        image: 'assets/images/category/sports.jpg',
        getName: 'sports',
        nakName: S.of(context).sports,
      ),
      CategoryModel(
        image: 'assets/images/category/technology.jpg',
        getName: 'technology',
        nakName: S.of(context).technology,
      ),
      CategoryModel(
        image: 'assets/images/category/business.jpg',
        getName: 'business',
        nakName: S.of(context).business,
      ),
      CategoryModel(
        image: 'assets/images/category/Palestine.webp',
        getName: 'Palestine',
        nakName: S.of(context).Palestine,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final categoryList = generateCategoryList(context);

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CategoryItem(
            category: categoryList[index],
          );
        },
        childCount: categoryList.length,
      ),
    );
  }
}
