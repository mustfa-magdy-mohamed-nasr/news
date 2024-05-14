import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/searsh/cubit/chang_text_cubit.dart';
import 'package:news/features/searsh/views/widgets/all_catgry_text.dart';
import 'package:news/features/searsh/views/widgets/item_Search_view.dart';
import 'package:news/utl/widgets/bar_title_subtitle.dart';
import 'package:news/features/searsh/views/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextColorCubit(),
      child: BlocBuilder<TextColorCubit, String?>(
        builder: (context, state) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      BarTitelSubtitle(
                        title: 'Discover',
                        subtitle: 'News from all over the world..',
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
              const SliverToBoxAdapter(child: AllCatgryText()),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return const ItemSearchView(); 
              }, childCount: 5)),
            ],
          );
        },
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