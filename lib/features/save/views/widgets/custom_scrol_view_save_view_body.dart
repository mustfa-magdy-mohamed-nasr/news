import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/save/views/widgets/item_search_view_sliver_list.dart';
import 'package:news/utl/cubits/artcl_cubit_cubit/artcl_cubit_cubit.dart';
import 'package:news/utl/model/article_mdel.dart';

class CustomScrollViewSaveViewBody extends StatelessWidget {
  const CustomScrollViewSaveViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtclCubitCubit, ArtclCubitState>(
      builder: (context, state) {
        List<ArticleModel> artcles =
            BlocProvider.of<ArtclCubitCubit>(context).artcles ?? [];
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'All Item...',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return ItemSearchViewSliverList(
                articleModel: artcles[index],
              );

             
            }, childCount: artcles.length)),
          ],
        );
      },
    );
  }
}
