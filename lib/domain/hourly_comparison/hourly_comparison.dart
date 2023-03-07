import 'package:freezed_annotation/freezed_annotation.dart';
part 'hourly_comparison.freezed.dart';

@freezed
abstract class HourlyComparison implements _$HourlyComparison {
  const HourlyComparison._();
  factory HourlyComparison({
    required int firstDateHour,
    required int firstDateOutCount,
    required int firstDateInCount,
    required int firstDateTotal,
    required int secondDateHour,
    required int secondDateOutCount,
    required int secondDateInCount,
    required int secondDateTotal,
  }) = _HourlyComparison;

  factory HourlyComparison.empty() => HourlyComparison(
      firstDateHour: 0,
      firstDateOutCount: 0,
      firstDateInCount: 0,
      firstDateTotal: 0,
      secondDateHour: 0,
      secondDateOutCount: 0,
      secondDateInCount: 0,
      secondDateTotal: 0);
}
