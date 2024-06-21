import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/category_view/presotion/view/category_view.dart';
import 'package:news/features/category/presontion/view_model/cubit/get_category/get_category_cubit.dart';
import 'package:news/features/category/data/model/categry_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (() {
          BlocProvider.of<GetCategoryCubit>(context)
              .getCategory(catagory: category.getName);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CategoryView()));
        }),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 200.h,
          width: 150.w,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(category.image ?? ''),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(.5),
              ),
              child: Text(
                category.nakName, // Text corresponding to the image
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      //),
    );
  }
}
