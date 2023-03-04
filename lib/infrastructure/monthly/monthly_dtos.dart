import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/monthly/monthly.dart';
part 'monthly_dtos.freezed.dart';
part 'monthly_dtos.g.dart';

@freezed
abstract class MonthlyDto implements _$MonthlyDto {
  MonthlyDto._();
  factory MonthlyDto({
    required int month,
    required int outCount,
    required int inCount,
    required int total,
  }) = _MonthlyDto;

  factory MonthlyDto.fromDomain(Monthly monthly) => MonthlyDto(
        month: monthly.month,
        outCount: monthly.outCount,
        inCount: monthly.inCount,
        total: monthly.total,
      );
  Monthly toDomain() => Monthly(
        month: month,
        outCount: outCount,
        inCount: inCount,
        total: total,
      );
  factory MonthlyDto.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDtoFromJson(json);
}
