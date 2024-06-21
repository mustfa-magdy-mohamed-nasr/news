part of 'add_artcle_in_hive_cubit.dart';

@immutable
class AddArtcleInHiveState {}

class AddArtcleInHiveInitial extends AddArtcleInHiveState {}
class AddArtcleInHiveSuccess extends AddArtcleInHiveState {}

class AddArtcleInHiveLodede extends AddArtcleInHiveState {}

class AddArtcleInHiveFailuere extends AddArtcleInHiveState {
  final String errorMessage;

  AddArtcleInHiveFailuere({required this.errorMessage});
}
