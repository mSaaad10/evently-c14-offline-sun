import 'package:intl/intl.dart';

extension FormatData on DateTime {
  String get viewMonthText {
    DateFormat formattedDate = DateFormat("MMMM");
    return formattedDate.format(this);
  }

  String get viewDayText {
    DateFormat formattedDate = DateFormat("EEEE");
    return formattedDate.format(this);
  }
}
