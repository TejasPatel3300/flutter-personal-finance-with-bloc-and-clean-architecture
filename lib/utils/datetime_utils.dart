import 'package:intl/intl.dart';

class DateTimeUtils {
  DateTimeUtils._internal();
  static final DateTimeUtils _instance = DateTimeUtils._internal();
  static DateTimeUtils get instance => _instance;

  String getDateMMMddyyyy(DateTime date) {
    return DateFormat('MMM dd, yyyy').format(date);
  }
}