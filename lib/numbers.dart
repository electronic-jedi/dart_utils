// Copyright (c) 2021 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// Work with numbers
library numbers;

double? parseDouble(dynamic unknown) {
  if (unknown is String) {
    return double.parse(unknown);
  } else if (unknown is num) {
    unknown.toDouble();
  } else {
    return null;
  }
}
