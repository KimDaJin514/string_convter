import 'package:intl/intl.dart';

extension NumFormatter on int {
  String get numWithComma {
    return NumberFormat('###,###,###,###').format(this).replaceAll(' ', '');
  }
}