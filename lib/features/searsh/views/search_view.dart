import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/searsh/views/widgets/no_search_body.dart';
import 'package:news/utl/cubits/change_text/chang_text_cubit.dart';
import 'package:news/features/searsh/views/widgets/all_catgry_text.dart';
import 'package:news/features/searsh/views/widgets/item_Search_view.dart';
import 'package:news/utl/cubits/search_news/search_news_cubit.dart';
import 'package:news/utl/model/article_mdel.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';
import 'package:news/features/searsh/views/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchNewsCubit(),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  BarTitelSubtitle(
                    title: 'Discover',
                    subtitle: 'Search for news from all over the world..',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CustomTextField(),
                  ),
                ],
              ),
            ),
          ),
          // const SliverToBoxAdapter(child: AllCatgryText()),
          BlocBuilder<SearchNewsCubit, SearchNewsState>(
            builder: (context, state) {
              if (state is GetCategryLoaded) {
                final List<ArticleModel> newArticleModel = state.articles;
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ItemSearchView(
                        articleModel: newArticleModel[index],
                      );
                    },
                    childCount: newArticleModel.length,
                  ),
                );
              } else if (state is SearchNewsInitial) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: NoSearchBody(),
                  ),
                );
              } else if (state is GetCategoryLoading) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child:CircularProgressIndicator(),
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
          ),
        ],
      ),
    );
  }
}

/**
 * 
 * 
 * 
 * SliverList(
      
      delegate: SliverChildBuilderDelegate(
      
        (context, index) {
        return ItemContent(data:datalist[index], imageArrow: "assets/images/Phrases/Arrow.png", fontSize: 10, );
    },
      childCount: datalist.length,
    )
    
    );
 * CustomScrollView(slivers: [
                  
                  SliverToBoxAdapter(child:  colorsTopView() ,),
                  SliverToBoxAdapter(child: CategoryText(text: "Course Content",),),
                  colorsItemsContent(),
                ],),
 */