import 'package:freezed_annotation/freezed_annotation.dart';
part 'monthly.freezed.dart';

@freezed
abstract class Monthly implements _$Monthly {
  Monthly._();
  factory Monthly({
    required int day,
    required int outCount,
    required int inCount,
    required int total,
  }) = _Monthly;

  factory Monthly.empty() => Monthly(
        day: 0,
        outCount: 0,
        inCount: 0,
        total: 0,
      );
}
