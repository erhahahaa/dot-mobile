extension MapExtension on Map {
  Map<String, dynamic> removeNullValues() {
    return Map<String, dynamic>.from(this)
      ..removeWhere((key, value) => value == null);
  }
}
