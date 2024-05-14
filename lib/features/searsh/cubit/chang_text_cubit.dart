import 'package:bloc/bloc.dart';

class TextColorCubit extends Cubit<String?> {
  TextColorCubit() : super(null);

  void toggleTextColor(String text) {
    if (state == text) {
      // If the clicked text is the same as the currently highlighted one, unhighlight
      emit(null);
    } else {
      // Highlight the clicked text
      emit(text);
    }
  }
}