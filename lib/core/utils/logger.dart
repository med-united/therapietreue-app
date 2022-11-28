import 'dart:developer' as dev;

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LogLevel {
  Info,
  Warn,
  Error,
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    info(
        topic: '[${provider.name ?? provider.runtimeType}]',
        message: ' value: ${newValue}');
  }

  static void info({
    required String topic,
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    dev.log("$topic: $message", error: error, stackTrace: stackTrace);
  }

  static void warn({
    required String topic,
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    dev.log("$topic: $message",
        level: 10, error: error, stackTrace: stackTrace);
  }

  static void error({
    required String topic,
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    dev.log("$topic: $message",
        level: 100, error: error, stackTrace: stackTrace);
  }

  static void log({
    required String topic,
    required String message,
    LogLevel level = LogLevel.Info,
    Object? err,
    StackTrace? stackTrace,
  }) {
    switch (level) {
      case LogLevel.Info:
        info(
            topic: topic, message: message, error: err, stackTrace: stackTrace);
        break;
      case LogLevel.Warn:
        warn(
            topic: topic, message: message, error: err, stackTrace: stackTrace);
        break;
      case LogLevel.Error:
        error(
            topic: topic, message: message, error: err, stackTrace: stackTrace);
        break;
    }
  }
}
