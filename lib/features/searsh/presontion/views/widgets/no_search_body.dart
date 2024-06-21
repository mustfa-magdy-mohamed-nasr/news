import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/searsh/presontion/views/widgets/popular_card.dart';
import 'package:news/features/searsh/presontion/view_model/cubit/search_news/search_news_cubit.dart';
import 'package:news/generated/l10n.dart';

class NoSearchBody extends StatelessWidget {
  const NoSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.w, right: 10.w, left: 10.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              S.of(context).Popular,
              style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
          Wrap(
            children: [
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Gaza_Conflict);
                },
                titl: S.of(context).Gaza_Conflict,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context).searchNews(
                    query: S.of(context).Ceasefire_Talks,
                  );
                },
                titl: S.of(context).Ceasefire_Talks,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Humanitarian_Aid);
                },
                titl: S.of(context).Humanitarian_Aid,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Border_Tensions);
                },
                titl: S.of(context).Border_Tensions,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Airstrikes);
                },
                titl: S.of(context).Airstrikes,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Peace_Efforts);
                },
                titl: S.of(context).Peace_Efforts,
              ),
              PopularCard(
                  onTap: () {
                    BlocProvider.of<SearchNewsCubit>(context)
                        .searchNews(query: S.of(context).Peace_Efforts);
                  },
                  titl: S.of(context).Peace_Efforts),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Reconstruction);
                },
                titl: S.of(context).Reconstruction,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: S.of(context).Diplomatic_Responses);
                },
                titl: S.of(context).Diplomatic_Responses,
              ),
              PopularCard(
                onTap: () {
                  BlocProvider.of<SearchNewsCubit>(context)
                      .searchNews(query: 'COVID Cure');
                },
                titl: S.of(context).COVID_Cure,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
