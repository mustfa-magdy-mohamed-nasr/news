import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/servises/news_servises.dart';
import 'package:news/utl/cubits/get_news/get_news_state.dart';
import 'package:news/utl/model/article_mdel.dart';
import 'package:news/utl/model/categry_model.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
  // List<ContactModel>? member;
  List<ArticleModel> articleModel = [];
  Future<void> getNews({required String catagory}) async {
    try {
      NewsServises newsServises = NewsServises(Dio());

      articleModel = await newsServises.getNews(category: catagory);
      emit(GetNewsLoaded());
    } catch (e) {
      emit(GetNewsFaluer(errorMessage: e.toString()));
      print(e.toString());
    }
  }

  
}
/**
 *getNews({required String category}) async {
    try {
      NewsServises newsServises = NewsServises(Dio());
      late List<ArticleModel> articleModel;
      articleModel = await newsServises.getNews(category: category);
      emit(GetNewsLoaded(articleModel));
    } catch (e) {
      emit(GetNewsFailure(errorMessage: e.toString()));
    }
  }
}
 */