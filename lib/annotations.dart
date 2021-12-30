// Copyright (c) 2021 Jedi Hero
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/// A dart library
library annotations;

class UnstableApi {
  /// This API is marked as unstable and may be removed.
  const UnstableApi(this.sinceVersion);
  final String sinceVersion;
}
