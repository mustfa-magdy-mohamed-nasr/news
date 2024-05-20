import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/searsh/views/widgets/item_Search_view.dart';
import 'package:news/utl/cubits/get_category/get_category_cubit.dart';
import 'package:news/utl/model/article_mdel.dart';

class SliverListCategoryView extends StatelessWidget {
  const SliverListCategoryView({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

  final List<ArticleModel> articleModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150.h,
      left: 0,
      right: 0,
      child: Container(
        height: 700.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: BlocBuilder<GetCategoryCubit, GetCategoryState>(
          builder: (context, state) {
            if (state is GetCategryLoaded) {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ItemSearchView(
                          articleModel: articleModel[index],
                        );
                      },
                      childCount: articleModel.length,
                    ),
                  ),
                ],
              );
            } else if (state is GetCategoryInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text('Oops'),
              );
            }
          },
        ),
      ),
    );
  }
}
