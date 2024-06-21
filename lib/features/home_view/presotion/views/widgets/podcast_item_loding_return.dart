import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presontion/view_model/cubit/get_news/get_news_cubit.dart';
import 'package:news/features/home/presontion/view_model/cubit/get_news/get_news_state.dart';
import 'package:news/features/home_view/presotion/views/widgets/podcast_item.dart';
import 'package:news/features/home_view/presotion/views/widgets/podcast_item_loding.dart';

class PodCastItemLodingReturn extends StatelessWidget {
  const PodCastItemLodingReturn({super.key});

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
      builder: (context, state) {
        if (state is GetNewsLoading) {
          return const SliverToBoxAdapter(
            child: PodcastItemLoding(),
          );
        } else if (state is GetNewsLoaded) {
          return const SliverToBoxAdapter(child: PodcastItem());
        } else if (state is GetNewsInitial) {
          return const SliverToBoxAdapter(
            child: PodcastItemLoding(),
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
