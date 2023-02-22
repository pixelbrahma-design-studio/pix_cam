import 'package:freezed_annotation/freezed_annotation.dart';
part 'weekly.freezed.dart';

@freezed
abstract class Weekly implements _$Weekly {
  const Weekly._();
  const factory Weekly({
    required int hour,
    required int outCount,
    required int inCount,
    required int total,
  }) = _Weekly;

  factory Weekly.empty() => const Weekly(
        hour: 0,
        outCount: 0,
        inCount: 0,
        total: 0,
      );
}
