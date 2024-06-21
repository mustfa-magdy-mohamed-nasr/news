import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news/servises/search_servises.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

part 'search_news_state.dart';

class SearchNewsCubit extends Cubit<SearchNewsState> {
  SearchNewsCubit() : super(SearchNewsInitial());

  List<ArticleModel> categryModel = [];
  Future<void> searchNews({required String query}) async {
    try {
      emit(GetCategoryLoading());
      SearchNews searchNews = SearchNews(Dio());

      categryModel = await searchNews.searchNews(query: query);
      log(categryModel.toString());
      emit(GetCategryLoaded(articles: categryModel));
    } catch (e) {
      emit(GetCategryFaluer(errorMessage: e.toString()));
      log(e.toString());
    }
  }
}
