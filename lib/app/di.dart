import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'di.config.dart';

String _dirPath = '';

@module
abstract class AppModule {
  @singleton
  String get dirPath => _dirPath;
}

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  throwOnMissingDependencies: true,
)
Future<void> configureDependencies() async {
  if (!kIsWeb) {
    final dir = await getApplicationDocumentsDirectory();
    _dirPath = dir.path;
  }

  await sl.init();
}
