import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weekly.freezed.dart';

@freezed
abstract class Weekly implements _$Weekly {
  const Weekly._();
  const factory Weekly({
    required int day,
    required int outCount,
    required int inCount,
    required int total,
  }) = _Weekly;

  factory Weekly.empty() => Weekly(
        day: 0,
        outCount: 0,
        inCount: 0,
        total: 0,
      );
}
