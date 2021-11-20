///
/// Filename: c:\Users\dalit\Desktop\dart_utils\lib\annotations.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Saturday, November 13th 2021, 1:50:21 pm
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A dart library
library annotations;

import 'dart:mirrors';

@Experimental()
class Api {
  /// Annotation for the api compatibility.
  const Api(this.firstSeenVersion, {this.maxApiVersion, this.minApiVersion})
      : assert((minApiVersion ?? 0) > -1),
        assert((maxApiVersion ?? 0) > -1),
        assert(firstSeenVersion > -1);

  /// The API version in which the feature was added
  final int firstSeenVersion;

  /// The minimum API version in which the feature is expected to work
  final int? minApiVersion;

  /// The maximum API version in which the feature is expected to work
  final int? maxApiVersion;
  static Api? getVersionOfClass(Type type) {
    final mirror = reflectClass(type.runtimeType);
    final annotation = getAnnotation<Api>(mirror, Api);
    return annotation;
  }
}

class Experimental {
  /// Experimental support annotation
  const Experimental();
}

T? getAnnotation<T>(DeclarationMirror declarationMirror, Type annotationType) {
  for (final instance in declarationMirror.metadata) {
    if (instance.hasReflectee) {
      final reflectee = instance.reflectee;
      if (reflectee.runtimeType == annotationType) {
        return reflectee as T;
      }
    }
  }
  return null;
}

List<T> getAnnotations<T>(DeclarationMirror declarationMirror,
    [Type? annotationType]) {
  final List<T> result = [];
  for (final instance in declarationMirror.metadata) {
    if (instance.hasReflectee) {
      final T reflectee = instance.reflectee;
      if (annotationType == null) {
        result.add(reflectee);
      } else if (reflectee.runtimeType == annotationType) {
        result.add(reflectee);
      }
    }
  }
  return result;
}

class StructurePrivate {
  /// Implies that this field, property or method should be used only in the
  /// enclosing mixin, class, enum or extension.
  const StructurePrivate();
}
