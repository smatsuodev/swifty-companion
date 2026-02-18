import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

@riverpod
Logger logger(Ref ref) => Logger(printer: _LogoutOutputWithTag('AppLogger'));

extension LoggerForConsumerStatefulWidgetExt on ConsumerStatefulWidget {
  Logger get logger =>
      Logger(printer: _LogoutOutputWithTag(this.runtimeType.toString()));
}

class _LogoutOutputWithTag extends LogPrinter {
  final String tag;

  _LogoutOutputWithTag(this.tag);

  @override
  List<String> log(LogEvent event) {
    return ['${event.level.name.toUpperCase()} [$tag]: ${event.message}'];
  }
}
