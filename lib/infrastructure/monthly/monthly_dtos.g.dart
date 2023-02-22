// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonthlyDto _$$_MonthlyDtoFromJson(Map<String, dynamic> json) =>
    _$_MonthlyDto(
      hour: json['hour'] as int,
      outCount: json['outCount'] as int,
      inCount: json['inCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_MonthlyDtoToJson(_$_MonthlyDto instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'outCount': instance.outCount,
      'inCount': instance.inCount,
      'total': instance.total,
    };
