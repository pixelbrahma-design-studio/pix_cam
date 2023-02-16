import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';

part 'hourly_dtos.freezed.dart';
part 'hourly_dtos.g.dart';

@freezed
abstract class HourlyDto implements _$HourlyDto {
  const HourlyDto._();

  const factory HourlyDto({
    required String hour,
    required String outCount,
    required String inCount,
    required String total,
  }) = _HourlyDto;

  factory HourlyDto.fromDomain(Hourly hourly) {
    return HourlyDto(
      hour: hourly.hour,
      outCount: hourly.outCount,
      inCount: hourly.inCount,
      total: hourly.total,
    );
  }

  Hourly toDomain() {
    return Hourly(
      hour: hour,
      outCount: outCount,
      inCount: inCount,
      total: total,
    );
  }

  factory HourlyDto.fromJson(Map<String, dynamic> json) =>
      _$HourlyDtoFromJson(json);

  factory HourlyDto.fromFirestore(DocumentSnapshot doc) {
    var some = HourlyDto.fromJson(doc.data() as Map<String, dynamic>);

    return some;
  }
}
