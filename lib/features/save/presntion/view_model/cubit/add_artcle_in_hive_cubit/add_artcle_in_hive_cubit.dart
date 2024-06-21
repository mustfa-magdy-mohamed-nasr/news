import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:news/utl/contanit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

part 'add_artcle_in_hive_state.dart';

class AddArtcleInHiveCubit extends Cubit<AddArtcleInHiveState> {
  AddArtcleInHiveCubit() : super(AddArtcleInHiveInitial());
 
  addArtcle(ArticleModel artcle) async {
    emit(AddArtcleInHiveLodede());
    try {
      var artcalBox = Hive.box<ArticleModel>(kArticleBox);
      await artcalBox.add(artcle);
      emit(AddArtcleInHiveSuccess());

      log('====================');
    } catch (e) {
      emit(AddArtcleInHiveFailuere(errorMessage: e.toString()));
    }
  }
}
