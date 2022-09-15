// Copyright (c) 2021 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// A library to work with strings conforming to a format.
library string;

/// Extension to add more features to the [String] type.
extension StringUtils on String {
  /// Attempts to return the first letter of a string as uppercase
  String get capitalized {
    return trim()[0].toUpperCase() + (length > 1 ? substring(1) : '');
  }
  @Deprecated('Use capitalized instead')
  String get capitalised=>capitalized;
  /// Attempts to return the first letter of each word in a string as uppercase
  String get nameFormat {
    return trim()
        .split(RegExp(r'\s+'))
        .map((part) => part.capitalized)
        .join(' ');
  }
}

String? emptyAsNull(String arg) {
  return arg.isEmpty ? null : arg;
}
