// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourlyDto _$$_HourlyDtoFromJson(Map<String, dynamic> json) => _$_HourlyDto(
      hour: json['hour'] as int,
      outCount: json['outCount'] as int,
      inCount: json['inCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_HourlyDtoToJson(_$_HourlyDto instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'outCount': instance.outCount,
      'inCount': instance.inCount,
      'total': instance.total,
    };
