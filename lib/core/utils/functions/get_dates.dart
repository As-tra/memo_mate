List<DateTime> getNext10Days() {
  List<DateTime> next10days = [];
  DateTime date = DateTime.now();

  for (int i = 0; i < 10; i++) {
    next10days.add(date);
    date = date.add(const Duration(days: 1));
  }
  return next10days;
}

