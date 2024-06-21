import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tools_state.dart';

class ToolsCubit extends Cubit<ToolsState> {
  ToolsCubit() : super(ToolsInitial());

  int selectedTool = -1;
  List<IconData> icons = [
    Icons.format_bold,
    Icons.format_italic,
    Icons.format_underline,
    Icons.title,
    Icons.format_align_justify,
    Icons.format_align_left,
    Icons.format_align_center,
    Icons.format_align_right,
  ];

  void selectTool({required int index}) {
    if (selectedTool == index) {
      selectedTool = -1;
    } else {
      selectedTool = index;
    }
    emit(ToolsSelected());
  }
}
