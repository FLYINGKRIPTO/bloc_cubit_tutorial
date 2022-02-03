import 'package:bloc_cubit_tutorial/cubit/text_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO 2: Create TextCubit , Extend it with Cubit<CubitState>

class TextCubit extends Cubit<TextCubitState> {
  TextCubit()
      : super(
          InitialState()
        );
  //
  void passText(String text ) {
    emit(LoadedState(eng: ["THIS IS EMITTED AFTER TAP ", text]));
  }

  void passText2(String text ) {
    emit(LoadingState(eng: ["THIS IS EMITTED AFTER TAP ", text]));
  }
}
