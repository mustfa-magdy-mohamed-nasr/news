import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home_view/views/widgets/item_home_view.dart';
import 'package:news/utl/cubits/get_news/get_news_cubit.dart';
import 'package:news/utl/cubits/get_news/get_news_state.dart';
import 'package:news/utl/model/article_mdel.dart';

class BreakingListHorizintal extends StatelessWidget {
  const BreakingListHorizintal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {
        if (state is GetNewsFaluer) {
          Center(
            child: Text(state.errorMessage),
          );
        }
      },
   builder   : (context, state) {
        List<ArticleModel> articaleModel =
            BlocProvider.of<GetNewsCubit>(context).articleModel;
        if (state is GetNewsLoaded) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ItemHomeView(
                  articleModel: articaleModel[index],
                );
              },
              childCount: articaleModel.length,
            ),
          );
        } else if (state is GetNewsInitial) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Oops'),
            ),
          );
        }
      },
    );
  }
}
