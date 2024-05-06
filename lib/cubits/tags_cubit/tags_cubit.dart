

import 'package:flutter_bloc/flutter_bloc.dart';

part 'tags_state.dart';

class TagsCubit extends Cubit<TagsState> {
  TagsCubit() : super(TagsInitial());
}
