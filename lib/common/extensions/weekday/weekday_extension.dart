extension WeekdayExtension on int {
  String get toWeekdayString => switch (this) {
        1 => "Mon",
        2 => "Tue",
        3 => "Wed",
        4 => "Thu",
        5 => "Fri",
        6 => "Sat",
        7 => "Sun",
        _ => '-',
      };
}
