class GetNewsState {}

class GetNewsInitial extends GetNewsState {}

class GetNewsLoaded extends GetNewsState {}
class GetNewsLoading extends GetNewsState {} 
class GetNewsFaluer extends GetNewsState {
  final String errorMessage;

  GetNewsFaluer({required this.errorMessage});
}

