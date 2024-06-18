import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:news/utl/contanit.dart';
import 'package:news/utl/model/article_mdel.dart';

part 'artcl_cubit_state.dart';

class ArtclCubitCubit extends Cubit<ArtclCubitState> {
  ArtclCubitCubit() : super(ArtclCubitInitial());
  fetchAllArtcle() {
    try {
      var artcalBox = Hive.box<ArticleModel>(kArticleBox);
      List<ArticleModel> artcles = artcalBox.values.toList();
      emit(ArtclCubitSuccsess(artcls: artcles));

      log('====================');
    } catch (e) {
      emit(ArtclCubitFaiulre(errorMessage: e.toString()));
    }
  }
}
