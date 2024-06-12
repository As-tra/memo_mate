import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  List<Color> noteColors = const [
    Color(0xFFD0C9EB),
    Color(0xFFD9E8FC),
    Color(0xFFCAE4B0),
    Color(0xFFFDE99D),
    Color(0xFFF1CDDD),
    Color(0xFFB0E9CA),
    Color(0xFFFFEADD),
  ];
  int currentColor = -1;
  ColorCubit() : super(ColorInitial());
  void selectColor({required int index}) {
    currentColor = index;
    emit(ColorSelected());
  }
}
