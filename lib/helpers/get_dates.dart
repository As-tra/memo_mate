import 'package:memo_mate/models/date_modal.dart';

List<Date> getNextTwoWeeks() {
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

  // I don't add the ability to fetch the consequitve 14 days yet!

  for (int i = 0; i < 10; i++) {
    nextTwoWeeks.add(
      Date(
        weekDay: weekdays[date.weekday - 1],
        month: months[date.month - 1],
        day: '${date.day}',
      ),
    );
  }
  return nextTwoWeeks;
}
