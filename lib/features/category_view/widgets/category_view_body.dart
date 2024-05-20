import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/category/category_view/widgets/sliverList_category_view.dart';
import 'package:news/utl/cubits/get_category/get_category_cubit.dart';
import 'package:news/utl/cubits/get_news/get_news_cubit.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 800.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/category/categry_view.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 10.w,
                  top: 80.h,
                  child: const Text(
                    'Explore Topics',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold),
                  )),
              SliverListCategoryView(
                articleModel:
                    BlocProvider.of<GetCategoryCubit>(context).categryModel,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
