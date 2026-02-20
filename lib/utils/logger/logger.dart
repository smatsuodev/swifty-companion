import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

@riverpod
Logger logger(Ref ref) => Logger(printer: _LogoutOutputWithTag('AppLogger'));

extension LoggerForStatefulWidgetExt on StatefulWidget {
  Logger get logger =>
      Logger(printer: _LogoutOutputWithTag(runtimeType.toString()));
}

extension LoggerForStatelessWidgetExt on StatelessWidget {
  Logger get logger =>
      Logger(printer: _LogoutOutputWithTag(runtimeType.toString()));
}

class _LogoutOutputWithTag extends LogPrinter {
  final String tag;

  _LogoutOutputWithTag(this.tag);

  @override
  List<String> log(LogEvent event) {
    return ['${event.level.name.toUpperCase()} [$tag]: ${event.message}'];
  }
}
