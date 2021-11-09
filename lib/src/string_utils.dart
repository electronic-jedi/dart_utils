/// Copyright (c) 2021 Jedi Hero https://www.github.com/jedi-hero
/// All rights reserved.
///

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
