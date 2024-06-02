import 'package:flutter_bloc/flutter_bloc.dart';

part 'tags_state.dart';

class TagsCubit extends Cubit<TagsState> {
  TagsCubit() : super(TagsInitial());

  int current = 0;
  List<String> tags = [
    'All',
    'Important',
    'Entertainment',
    'To-do lists',
    'Shopping list',
    'Personal',
    'Others'
  ];

  void selectTagItem(int index) {
    current = index;
    emit(TagSelected());
  }
}
