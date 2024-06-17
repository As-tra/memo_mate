import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/functions/get_dates.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit() : super(DateInitial());

  int current = 0;
  List<DateTime> dates = getNext10Days() ;

  void selectDate({required int index}) {
    current = index;
    emit(DateSelected());
  }
}