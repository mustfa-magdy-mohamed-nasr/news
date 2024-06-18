import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_artcle_in_hive_state.dart';

class AddArtcleInHiveCubit extends Cubit<AddArtcleInHiveState> {
  AddArtcleInHiveCubit() : super(AddArtcleInHiveInitial());
}
