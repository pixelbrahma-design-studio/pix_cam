import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
part 'weekly_dtos.freezed.dart';
part 'weekly_dtos.g.dart';

@freezed
abstract class WeeklyDto implements _$WeeklyDto {
  const WeeklyDto._();
  factory WeeklyDto({
    required int day,
    required int outCount,
    required int inCount,
    required int total,
  }) = _WeeklyDto;

  factory WeeklyDto.fromDomain(Weekly weekly) {
    return WeeklyDto(
      day: weekly.day,
      outCount: weekly.outCount,
      inCount: weekly.inCount,
      total: weekly.total,
    );
  }

  Weekly toDomain() {
    return Weekly(
      day: day,
      outCount: outCount,
      inCount: inCount,
      total: total,
    );
  }

  factory WeeklyDto.fromJson(Map<String, dynamic> json) =>
      _$WeeklyDtoFromJson(json);
}
