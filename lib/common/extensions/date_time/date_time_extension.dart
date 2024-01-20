import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String get getTime {
    if (this == null) {
      return '';
    }
    final formatter = DateFormat.Hm();

    return formatter.format(this!);
  }
}
