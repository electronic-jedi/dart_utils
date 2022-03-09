// Copyright (c) 2022 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

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

  /// Get the time in the format `1:04 PM`.
  String get timeOfDaySimplified {
    final suffix = hour >= 12 ? 'PM' : 'AM';
    final _hour = hour > 12 ? hour - 12 : hour;
    return '$_hour:$minute $suffix';
  }

  /// Get the time in the format `13:04`.
  String get timeOfDay {
    return '$hour:$minute';
  }

  /// Attempts to get the full name of the month.
  String get monthName {
    String name;
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
      default:
        name = 'December';
        break;
    }
    return name;
  }
}
