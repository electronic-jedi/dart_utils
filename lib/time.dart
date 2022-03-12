// Copyright (c) 2022 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// A library to work with time
library time;

String _plural(int quantity, [String plural = 's', String singular = '', int threshold = 1]) {
  if (quantity > threshold)
    return plural;
  else
    return singular;
}

/// Extension utilities on the [Duration] class
extension DurationUtils on Duration {
  /// Attempts to get the duration in years
  @Deprecated('use "inYears_" instead')
  int get inYears => inYears_;

  /// Attempts to get the duration in years
  int get inYears_ {
    return inDays ~/ 365;
  }

  /// Get elapsed time of date.
  /// * You can use [DateTime.subtract]
  /// to find elapsed time between two dates.
  String get elapsedDuration_ {
    int elapsed = 0;
    String suffix;

    if (inDays ~/ 365.25 >= 1) {
      elapsed = inDays ~/ 365.25;
      suffix = 'year' + _plural(elapsed);
    } else if (inDays ~/ 31 >= 1) {
      elapsed = inDays ~/ 30;
      suffix = 'about month' + _plural(elapsed);
    } else if (inDays >= 1) {
      elapsed = inDays;
      suffix = 'day' + _plural(inDays);
    } else if (inMinutes >= 1) {
      elapsed = inMinutes;
      suffix = 'minute' + _plural(inMinutes);
    } else {
      elapsed = inSeconds;
      suffix = 'second' + _plural(inSeconds);
    }
    return '$elapsed $suffix';
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
  @Deprecated('use `meridianTime` instead')
  String get timeOfDaySimplified {
    return meridianTime;
  }

  /// Get the time in the format `1:04 PM`.
  @Deprecated('use "meridianTime_"')
  String get meridianTime => meridianTime_;

  /// Get the time in the format `1:04 PM`.
  String get meridianTime_ {
    final suffix = hour >= 12 ? 'PM' : 'AM';
    final _hour = hour > 12 ? hour - 12 : hour;
    final _minute = minute < 10 ? '0$minute' : minute;
    return '$_hour:$_minute $suffix';
  }

  /// Get the time in the format `13:04`.
  @Deprecated('use "timeOfDay_"')
  String get timeOfDay => timeOfDay_;

  /// Get the time in the format `13:04`.
  String get timeOfDay_ {
    final _minute = minute < 10 ? '0$minute' : minute;
    return '$hour:$_minute';
  }

  /// Attempts to get the full name of the month.
  @Deprecated('use "monthName_"')
  String get monthName => monthName_;

  /// Attempts to get the full name of the month.
  String get monthName_ {
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
