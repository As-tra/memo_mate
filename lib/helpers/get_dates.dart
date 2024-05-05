import 'package:memo_mate/models/date_modal.dart';

List<Date> getNext10Days() {
  List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List<Date> nextTwoWeeks = [];
  DateTime date = DateTime.now();

  int day = date.day;
  int month = date.month;
  int year = date.year;

  for (int i = 0; i < 10; i++) {
    date = DateTime.parse(
        '$year-${month < 10 ? 0 : ""}$month-${day < 10 ? 0 : ""}$day');
    nextTwoWeeks.add(
      Date(
        weekDay: weekdays[date.weekday - 1],
        month: months[date.month - 1],
        day: '${date.day}',
      ),
    );
    [day, month, year] = getNext(day, month, year);
  }
  return nextTwoWeeks;
}

List<int> getNext(int day, int month, int year) {
  int nextDay = day + 1;
  int nextMonth = month;
  int nextYear = year;
  if (month == 2) {
    if ((isLeap(year) && nextDay > 29) || (!isLeap(year) && nextDay > 28)) {
      nextDay = 1;
      nextMonth++;
    }
  } else if ([4, 6, 9, 11].contains(month) && nextDay > 30) {
    nextDay = 1;
    nextMonth++;
  } else if ([1, 3, 5, 7, 8, 10, 12].contains(month) && nextDay > 31) {
    nextDay = 1;
    nextMonth++;
    if (nextMonth > 12) {
      nextMonth = 1;
      nextYear++;
    }
  }

  return [nextDay, nextMonth, nextYear];
}

bool isLeap(int year) {
  return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0);
}
