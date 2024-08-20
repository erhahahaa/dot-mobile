import 'dart:isolate';

typedef ModelIsolateConverter<T> = T Function(dynamic response);

class ModelIsolateParser<T> {
  final dynamic model;

  ModelIsolateConverter<T> converter;

  ModelIsolateParser(this.model, this.converter);

  Future<T> parseInBackground() async {
    final port = ReceivePort();
    await Isolate.spawn(_parser, port.sendPort);

    final result = await port.first;
    return result as T;
  }

  Future<void> _parser(SendPort sendPort) async {
    final result = converter(model);
    Isolate.exit(sendPort, result);
  }
}
