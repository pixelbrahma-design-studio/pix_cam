import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly.freezed.dart';

@freezed
abstract class Hourly implements _$Hourly {
  const Hourly._();

  const factory Hourly({
    required String hour,
    required String outCount,
    required String inCount,
    required String total,
  }) = _Hourly;

  factory Hourly.empty() => const Hourly(
        hour: '',
        outCount: '',
        inCount: '',
        total: '',
      );
}
