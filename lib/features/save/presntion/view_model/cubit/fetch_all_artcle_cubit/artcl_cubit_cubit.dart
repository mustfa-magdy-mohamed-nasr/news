import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:news/utl/contanit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

part 'artcl_cubit_state.dart';

class ArtclCubitCubit extends Cubit<ArtclCubitState> {
  ArtclCubitCubit() : super(ArtclCubitInitial());
  List<ArticleModel>? artcles;
    fetchAllArtcle() {
    var artcalBox = Hive.box<ArticleModel>(kArticleBox);
    artcles = artcalBox.values.toList();

    if (artcles == null || artcles!.isEmpty) {
      emit(ArtclStateEmpty());
    } else {
      emit(ArtclAtateSuccess());
    }

    log('====================fetchAllArtcle');
  }
}


