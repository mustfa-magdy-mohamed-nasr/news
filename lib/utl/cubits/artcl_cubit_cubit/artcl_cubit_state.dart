part of 'artcl_cubit_cubit.dart';

@immutable
class ArtclCubitState {}

class ArtclCubitInitial extends ArtclCubitState {}

class ArtclCubitSuccsess extends ArtclCubitState {
 final List<ArticleModel> artcls;
  ArtclCubitSuccsess({required this.artcls});
}

class ArtclCubitFaiulre extends ArtclCubitState {
  final String errorMessage;

  ArtclCubitFaiulre({required this.errorMessage});
}
