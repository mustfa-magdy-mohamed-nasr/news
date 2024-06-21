import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/searsh/presontion/views/widgets/item_Search_view_loading.dart';
import 'package:news/features/searsh/presontion/views/widgets/no_search_body.dart';
import 'package:news/features/searsh/presontion/views/widgets/item_Search_view.dart';
import 'package:news/features/searsh/presontion/view_model/cubit/search_news/search_news_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';
import 'package:news/generated/l10n.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';
import 'package:news/features/searsh/presontion/views/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchNewsCubit(),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 10.w, right: 10.w, left: 10.w),
              child: Column(
                children: [
                  BarTitelSubtitle(
                    title: S.of(context).Discover,
                    subtitle: S.of(context).Search_for_news_from,
                  ),
                  const CustomTextField(),
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
                return const ItemSearchViewLoading();
              } else {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(S.of(context).Oops),
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