import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news/servises/news_servises.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

part 'get_category_state.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  GetCategoryCubit() : super(GetCategoryInitial());
  List<ArticleModel> categryModel = [];
  Future<void> getCategory({required String catagory}) async {
    try {
      emit(GetCategoryLoading());
      NewsServises newsServises = NewsServises(Dio());

      categryModel = await newsServises.getNews(category: catagory);
      log(categryModel.toString());
      emit(GetCategryLoaded(articles: categryModel));
    } catch (e) {
      emit(GetCategryFaluer(errorMessage: e.toString()));
      print(e.toString());
    }
  }
}
