// Copyright (c) 2021 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// A dart library
library extra_models;

class Entity {
  /// A versatile serializable item generator
  Entity(
    this.label, {
    this.tag,
    this.groupTag,
    this.method,
    this.description,
    this.model,
    this.data = const {},
    this.list = const [],
  });

  /// A convinience utility method
  dynamic Function(dynamic)? method;

  /// Preferably an identifier
  String? tag;

  /// Preferebly a collection (belonging) identifier
  String? groupTag;

  /// A locale identifier
  String? label;

  /// A description for the item
  String? description;

  /// Used to keep a list collection of data
  List<dynamic> list;

  /// Used to keep a map collection of data
  Map<String, dynamic> data;

  /// Preferebly asssigned a data model.
  /// This field is not serialized
  dynamic model;
}
