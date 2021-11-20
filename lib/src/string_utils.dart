///
/// Filename: c:\Users\dalit\Desktop\dart_utils\lib\src\string_utils.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Tuesday, November 9th 2021, 11:11:47 am
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A library to work with strings
library string;

/// Extension to add more features to the [String] type.
extension StringUtils on String {
  /// Attempts to return the first letter of a string as uppercase
  String get capitalised {
    return trim()[0].toUpperCase() + (length > 1 ? substring(1) : '');
  }

  /// Attempts to return the first letter of each word in a string as uppercase
  String get nameFormat {
    return trim()
        .split(RegExp(r'\s+'))
        .map((part) => part.capitalised)
        .join(' ');
  }
}
