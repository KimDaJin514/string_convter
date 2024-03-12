import 'package:intl/intl.dart';

extension StringFormatter on String{
  String get phoneFormat {
    String before = this;

    if(before.length != 11) {
      return this;
    }

    String formatted = '${before.substring(0, 3)}-${before.substring(3, 7)}-${before.substring(7, 11)}';
    return formatted;
  }

  String get dateWitUnit {
    String before = this;

    if (before.length != 8) {
      return before;
    }

    String birthFormat = '${before.substring(0, 4)}년 ${before.substring(4, 6)}월 ${before.substring(6, 8)}알';
    return birthFormat;
  }

  String get parseDateDot {
    return DateFormat('yyyy.MM.dd').format(DateTime.parse(this));
  }

  String get parseDateHyphen {
    return DateFormat('yyyy-MM-dd').format(DateTime.parse(this));
  }
}