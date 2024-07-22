import 'dart:io';

extension FileExt on File? {
  File clubImageFallback() {
    if (this != null) return this!;

    return File('assets/images/club.png');
  }
}
