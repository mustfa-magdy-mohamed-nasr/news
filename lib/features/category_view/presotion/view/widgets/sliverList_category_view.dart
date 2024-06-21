import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/category_view/presotion/view/widgets/item_category_view_loading.dart';
import 'package:news/features/searsh/presontion/views/widgets/item_Search_view.dart';
import 'package:news/features/category/presontion/view_model/cubit/get_category/get_category_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

class SliverListCategoryView extends StatelessWidget {
  const SliverListCategoryView({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

  final List<ArticleModel> articleModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      top: 150.h,
      left: 0,
      right: 0,
      child: Container(
        height: 700.h,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: BlocBuilder<GetCategoryCubit, GetCategoryState>(
          builder: (context, state) {
            if (state is GetCategryLoaded) {
            
              final List<ArticleModel> newArticleModel = state.articles;
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ItemSearchView(
                          articleModel: newArticleModel[index],
                        );
                      },
                      childCount: newArticleModel.length,
                    ),
                  ),
                ],
              );
            } else if (state is GetCategoryLoading) {
           return const ItemCategoryViewLoading();
            } else if (state is GetCategryFaluer) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return const Text('ops');
            }
          },
        ),
      ),
    );
  }
}
