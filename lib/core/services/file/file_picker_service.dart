import 'package:dot_coaching/core/core.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FilePickerService with FirebaseCrashLoggerService {
  late FilePicker _picker;
  FilePickerService() {
    try {
      _picker = FilePicker.platform;
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
  }

  FilePicker get picker {
    try {
      _picker = FilePicker.platform;
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
    return _picker;
  }

  @disposeMethod
  Future<void> dispose() async {
    try {
      await FilePicker.platform.clearTemporaryFiles();
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
  }
}
