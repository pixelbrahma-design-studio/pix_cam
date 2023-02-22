import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


part 'monthly_dtos.freezed.dart';
part 'monthly_dtos.g.dart';

@freezed
abstract class MonthlyDto implements _$MonthlyDto {
  const MonthlyDto._();
  factory MonthlyDto({
    required int hour,
    required int outCount,
    required int inCount,
    required int total,
  }) = _MonthlyDto;

  factory MonthlyDto.fromDomain(Monthly monthly) {
    return MonthlyDto(
      hour: monthly.hour,
      outCount: monthly.outCount,
      inCount: monthly.inCount,
      total: monthly.total,
    );
  }

  Monthly toDomain() {
    return Monthly(
      hour: hour,
      outCount: outCount,
      inCount: inCount,
      total: total,
    );
  }

  factory MonthlyDto.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDtoFromJson(json);

  // factory MonthlyDto.fromFirestore(DocumentSnapshot doc) {
  //   var some = MonthlyDto.fromJson(doc.data() as Map<String, dynamic>);
  //
  //   return some;
  // }

}
