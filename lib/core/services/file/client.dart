import 'package:dot_coaching/core/core.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerClient with FirebaseCrashLogger {
  late FilePicker _picker;

  FilePickerClient(this._picker) {
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
 
}
