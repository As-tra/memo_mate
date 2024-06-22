import 'package:intl/intl.dart';

String getCurrentDate() {
  var now = DateTime.now();
  return 'Created: ${DateFormat('MMM d, yyyy').format(now)}';
}
