///
/// Filename: c:\Users\dalit\Desktop\dart_utils\lib\src\gender.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Saturday, November 20th 2021, 5:30:54 pm
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A dart library
library gender;

enum Gender {
  male,
  female,
}

extension GenderUtils on Gender {
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
