/// Annotation for the api compatibility.
class Api {
  const Api(this.version, {this.maxApiVersion, this.minApiVersion});

  /// The API version in which the feature was added
  final String version;

  /// The minimum API version in which the feature is expected to work
  final String? minApiVersion;

  /// The maximum API version in which the feature is expected to work
  final String? maxApiVersion;
}

/// Experimental support annotation
class Experimental {
  const Experimental();
}
