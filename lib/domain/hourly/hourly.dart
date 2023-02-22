import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly.freezed.dart';

@freezed
abstract class Hourly implements _$Hourly {
  const Hourly._();

  const factory Hourly({
    required int hour,
    required int outCount,
    required int inCount,
    required int total,
  }) = _Hourly;

  factory Hourly.empty() => const Hourly(
        hour: 0,
        outCount: 0,
        inCount: 0,
        total: 0,
      );
}
