import 'package:flutter_bloc/flutter_bloc.dart';


class DateCubit extends Cubit<DateTime> {
  DateCubit() : super(DateTime.now());

  DateTime currentDate = DateTime.now();

  void selectDate({required DateTime date}) {
    currentDate = date;
  }
}
