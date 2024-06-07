import 'package:flutter_bloc/flutter_bloc.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit() : super(DateInitial());

  int current = 0;

  void selectDate({required int index}) {
    current = index;
    emit(DateSelected());
  }
}