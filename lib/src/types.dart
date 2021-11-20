///
/// Filename: c:\Users\dalit\Desktop\dart_utils\lib\src\types.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Saturday, November 20th 2021, 5:31:35 pm
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A dart library
library types;

/// A basic model utility class
class Entity {
  /// Creates a basic representation of a utility data structure useful for commonly used tasks.
  const Entity(
    this.label, {
    this.tag,
    this.method,
    this.description,
    this.data = const {},
  });

  /// A reference of this instance.
  /// It is useful for tracking the instance where grouped entities exists
  final String? tag;

  /// A reasonable given name for representation of this entity
  final String? label;

  /// A description of this object (if any)
  final String? description;

  /// All other miscellaneous data can be added in this map for convinience.
  /// Certain data can have varying properties or methods which can be assigned in a non agnostic manner
  final Map<dynamic, dynamic> data;

  /// A basic method that returns any data and accepts an argument of any type.
  /// This method exists because certain entities might need a way to retrieve/compute
  /// data in a non-predetermined way
  final dynamic Function(dynamic)? method;
}
