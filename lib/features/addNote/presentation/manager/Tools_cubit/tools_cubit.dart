import 'package:flutter_bloc/flutter_bloc.dart';

part 'tools_state.dart';

class ToolsCubit extends Cubit<ToolsState> {
  ToolsCubit() : super(ToolsInitial());

  int selectedTool = 0;


  void selectTool(){
    
  }
}
