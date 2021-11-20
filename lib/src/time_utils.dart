///
/// Filename: c:\Users\dalit\Desktop\dart_utils\lib\src\time_utils.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Tuesday, November 9th 2021, 11:19:55 am
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A library to work with time
library time;

/// Extension utilities on the [Duration] class
extension DurationUtils on Duration {
  /// Attempts to get the duration in years
  int get inYears {
    return inDays ~/ 365;
  }
}

/// Extension utilities on the [Duration] class
extension DateUtils on DateTime {
  /// Attempts to get a slashed version of a date string.
  /// It returns the format `dd/mm/yyyy`
  String get slashed {
    return '$day/$month/$year';
  }

  /// Attempts to get a dotted version of a date string.
  /// It returns the format `dd.mm.yyyy`
  String get dotted {
    return '$day.$month.$year';
  }

  /// Attempts to get a locale version of a date string.
  /// It returns the format `dd Month, yyyy`
  String get localized {
    return '$day $monthName, $year';
  }

  /// Attempts to get the period of day from the [DateTime] instance.
  /// It returns either `"morning"`, `"afternoon"` or `"evening"`.
  String get periodOfDay {
    return (hour >= 0 && hour < 12)
        ? 'morning'
        : (hour >= 12 && hour < 18)
            ? 'afternoon'
            : 'evening';
  }

  /// Attempts to get the name of the month.
  String get monthName {
    var name;
    switch (month) {
      case 1:
        name = 'January';
        break;
      case 2:
        name = 'February';
        break;
      case 3:
        name = 'March';
        break;
      case 4:
        name = 'April';
        break;
      case 5:
        name = 'May';
        break;
      case 6:
        name = 'June';
        break;
      case 7:
        name = 'July';
        break;
      case 8:
        name = 'August';
        break;
      case 9:
        name = 'September';
        break;
      case 10:
        name = 'October';
        break;
      case 11:
        name = 'November';
        break;
      case 12:
        name = 'December';
        break;
    }
    return name;
  }
}
