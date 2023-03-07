import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pix_cam/domain/hourly_comparison/hourly_comparison.dart';
part 'hourly_comparison_dto.freezed.dart';
part 'hourly_comparison_dto.g.dart';

@freezed
abstract class HourlyComparisonDto with _$HourlyComparisonDto {
  const HourlyComparisonDto._();
  const factory HourlyComparisonDto({
    required int firstDateHour,
    required int firstDateOutCount,
    required int firstDateInCount,
    required int firstDateTotal,
    required int secondDateHour,
    required int secondDateOutCount,
    required int secondDateInCount,
    required int secondDateTotal,
  }) = _HourlyComparisonDto;

  factory HourlyComparisonDto.fromDomain(HourlyComparison hourlyComparison) {
    return HourlyComparisonDto(
        firstDateHour: hourlyComparison.firstDateHour,
        firstDateOutCount: hourlyComparison.firstDateOutCount,
        firstDateInCount: hourlyComparison.firstDateInCount,
        firstDateTotal: hourlyComparison.firstDateTotal,
        secondDateHour: hourlyComparison.secondDateHour,
        secondDateOutCount: hourlyComparison.secondDateOutCount,
        secondDateInCount: hourlyComparison.secondDateInCount,
        secondDateTotal: hourlyComparison.secondDateTotal);
  }

  HourlyComparison toDomain() => HourlyComparison(
      firstDateHour: firstDateHour,
      firstDateOutCount: firstDateOutCount,
      firstDateInCount: firstDateInCount,
      firstDateTotal: firstDateTotal,
      secondDateHour: secondDateHour,
      secondDateOutCount: secondDateOutCount,
      secondDateInCount: secondDateInCount,
      secondDateTotal: secondDateTotal);

  factory HourlyComparisonDto.fromJson(Map<String, dynamic> json) =>
      _$HourlyComparisonDtoFromJson(json);
}
