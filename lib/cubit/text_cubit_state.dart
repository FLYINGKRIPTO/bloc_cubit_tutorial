
import 'package:equatable/equatable.dart';

abstract class TextCubitState extends Equatable{}

// TODO 1: CRATE STATES
class InitialState extends TextCubitState{
  @override
  List<Object?> get props => ["Milan"];

}

class LoadedState extends TextCubitState{
  final List<String> eng;
  LoadedState({required this.eng});

  @override
  List<Object?> get props =>eng;

}

class LoadingState extends TextCubitState{
  final List<String> eng;
  LoadingState({required this.eng});

  @override
  List<Object?> get props =>eng;

}

