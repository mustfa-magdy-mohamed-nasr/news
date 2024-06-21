part of 'search_news_cubit.dart';

@immutable
 class SearchNewsState {}

 class SearchNewsInitial extends SearchNewsState {}
class GetCategoryLoading extends SearchNewsState {}
class GetCategryLoaded extends SearchNewsState {
  final List<ArticleModel> articles;

  GetCategryLoaded({required this.articles});
}
class GetCategryFaluer extends SearchNewsState {
  final String errorMessage;

 GetCategryFaluer({required this.errorMessage});
}