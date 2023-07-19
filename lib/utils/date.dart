import 'package:intl/intl.dart';

mixin DateUtils {
  String getDateFormat(DateTime date, [String format = "dd/mm/yyyy"]) =>
      DateFormat(format).format(date);
}
