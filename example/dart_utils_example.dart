///
/// Filename: c:\Users\dalit\Desktop\dart_utils\example\dart_utils_example.dart
/// Path: c:\Users\dalit\Desktop\dart_utils
/// Created Date: Tuesday, November 9th 2021, 11:11:47 am
/// Author: Dalitso Sakala
///
/// Copyright (c) 2021 Jedi Hero
///

/// A dart library
@Api(1)
library example;

import '../lib/src/annotations.dart';

void main() {
  HomeView();
}

@Api(1)
@Experimental()
class HomeView {
  HomeView() {
    final version = Api.getVersionOfClass(runtimeType);
    print('${version?.firstSeenVersion}');
  }
}
