// Copyright (c) 2021 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// A dart library
library gender;

enum Gender {
  male,
  female,
}

extension GenderUtils on Gender {
  @Deprecated("Use the property on the enum API instead")
  String get name {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }

  /// Pass the name of the gender as a lowercase string
  static Gender? fromString(String? name) {
    switch (name?.toLowerCase()) {
      case 'male':
        return Gender.male;
      case 'female':
        return Gender.female;
      default:
        return null;
    }
  }
}
