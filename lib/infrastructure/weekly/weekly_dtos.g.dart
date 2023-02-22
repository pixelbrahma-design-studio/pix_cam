// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeeklyDto _$$_WeeklyDtoFromJson(Map<String, dynamic> json) => _$_WeeklyDto(
      hour: json['hour'] as int,
      outCount: json['outCount'] as int,
      inCount: json['inCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_WeeklyDtoToJson(_$_WeeklyDto instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'outCount': instance.outCount,
      'inCount': instance.inCount,
      'total': instance.total,
    };
