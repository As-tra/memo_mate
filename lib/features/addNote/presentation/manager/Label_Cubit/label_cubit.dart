import 'package:flutter_bloc/flutter_bloc.dart';

part 'label_state.dart';

class LabelCubit extends Cubit<LabelState> {
  LabelCubit() : super(LabelInitial());

  List<String> labelsList = [];

  void addLabel({required String label}) {
    labelsList.add(label);
    emit(LabelAdded());
  }

  void removeLabel({required String label}) {
    labelsList.remove(label);
    emit(LabelRemoved());
  }

  void removeAllLabels() {
    labelsList.clear();
    emit(LabelRemoved());
  }
}
