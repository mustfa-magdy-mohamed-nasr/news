part of 'get_category_cubit.dart';

@immutable
 class GetCategoryState {}

 class GetCategoryInitial extends GetCategoryState {}
class GetCategoryLoading extends GetCategoryState {}
class GetCategryLoaded extends GetCategoryState {
  final List<ArticleModel> articles;

  GetCategryLoaded({required this.articles});
}
class GetCategryFaluer extends GetCategoryState {
  final String errorMessage;

 GetCategryFaluer({required this.errorMessage});
}
