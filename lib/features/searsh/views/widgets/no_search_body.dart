import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/searsh/views/widgets/popular_card.dart';
import 'package:news/utl/cubits/search_news/search_news_cubit.dart';

class NoSearchBody extends StatelessWidget {
  const NoSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Popular",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Gaza Conflict');
                },
                titl: "Gaza Conflict",
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Ceasefire Talks');
                },
                titl: "Ceasefire Talks",
              ),
            ],
          ),
          Row(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Humanitarian Aid');
                },
                titl: "Humanitarian Aid",
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Border Tensions');
                },
                titl: "Border Tensions",
              ),
            ],
          ),
          Row(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Airstrikes');
                },
                titl: "Airstrikes",
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Peace Efforts');
                },
                titl: "Peace Efforts",
              ),
            ],
          ),
          Row(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Civilian Casualties');
                },
                titl: "Civilian Casualties",
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Reconstruction');
                },
                titl: "Reconstruction",
              ),
            ],
          ),
          Row(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'Diplomatic Responses');
                },
                titl: "Diplomatic Responses",
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'COVID Cure');
                },
                titl: "COVID Cure",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
