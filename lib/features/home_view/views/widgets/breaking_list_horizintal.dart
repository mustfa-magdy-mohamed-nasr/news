import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home_view/views/widgets/item_home_view.dart';
import 'package:news/utl/cubits/cubit/get_news_cubit.dart';
import 'package:news/utl/cubits/cubit/get_news_state.dart';
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
/**
 *  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsLoaded) {
          List<ArticleModel> articleModel = state.articleModel ?? [];
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ItemHomeView(
                  articleModel: articleModel[index],
                );
              },
              childCount: articleModel.length,
            ),
          );
        } else if (state is GetNewsInitial) {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: Text('Oops'),
            ),
          );
        }
      },
    );
  }
}
 * 
 * 
 * 
 * 
 * BlocBuilder<MemberCubit, MemberState>(
      builder: (context, state) {
        List<ContactModel> member =
            BlocProvider.of<MemberCubit>(context).member ?? [];
        return ListView.builder(
          itemCount: member.length,
          itemBuilder: (BuildContext context, int index) {
            return ContactItem(
              data: member[index],
            );
          },
        );
      },
    );
  }
}

 * 
 * 
 * 
 * 
 BlocBuilder<GetNewsCubit, GetNewsState>(
        builder: (context, state) {
          if (state is GetNewsInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetNewsLoaded) {
            return _widgetOptions[_selectedIndex];
          } else {
            return const Text('oops');
          }
          // return _widgetOptions[_selectedIndex];
        },
      ),
 
 
 
 
 
 
 
 
 
 
 
 
 @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberCubit, MemberState>(
      builder: (context, state) {
        List<ContactModel> member =
            BlocProvider.of<MemberCubit>(context).member ?? [];
        return ListView.builder(
          itemCount: member.length,
          itemBuilder: (BuildContext context, int index) {
            return ContactItem(
              data: member[index],
            );
          },
        );
      },
    );
  }
}
 */