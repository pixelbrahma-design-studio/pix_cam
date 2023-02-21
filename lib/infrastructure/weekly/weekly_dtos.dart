import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
import 'package:pix_cam/infrastructure/hourly/hourly_dtos.dart';
part 'weekly_dtos.freezed.dart';
part 'weekly_dtos.g.dart';

@freezed
abstract class WeeklyDto implements _$WeeklyDto {
  const WeeklyDto._();
  factory WeeklyDto({
    required int hour,
    required int outCount,
    required int inCount,
    required int total,
  }) = _WeeklyDto;

  factory WeeklyDto.fromDomain(Weekly weekly) {
    return WeeklyDto(
      hour: weekly.hour,
      outCount: weekly.outCount,
      inCount: weekly.inCount,
      total: weekly.total,
    );
  }

  Weekly toDomain() {
    return Weekly(
      hour: hour,
      outCount: outCount,
      inCount: inCount,
      total: total,
    );
  }

  factory WeeklyDto.fromJson(Map<String, dynamic> json) =>
      _$WeeklyDtoFromJson(json);
}
