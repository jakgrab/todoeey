import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String get getTime {
    if (this == null) {
      return '';
    }
    final formatter = DateFormat('HH:mm d.MM');

    return formatter.format(this!);
  }

  String get dayAndMonth {
    if (this == null) return '';

    final formatter = DateFormat('d.M');
    return formatter.format(this!);
  }
}
