import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/monthly/monthly.dart';
part 'monthly_dtos.freezed.dart';
part 'monthly_dtos.g.dart';

@freezed
abstract class MonthlyDto implements _$MonthlyDto {
  MonthlyDto._();
  factory MonthlyDto({
    required int hour,
    required int outCount,
    required int inCount,
    required int total,
  }) = _MonthlyDto;

  factory MonthlyDto.fromDomain(Monthly monthly) => MonthlyDto(
        hour: monthly.hour,
        outCount: monthly.outCount,
        inCount: monthly.inCount,
        total: monthly.total,
      );
  Monthly toDomain() => Monthly(
        hour: hour,
        outCount: outCount,
        inCount: inCount,
        total: total,
      );
  factory MonthlyDto.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDtoFromJson(json);
}
