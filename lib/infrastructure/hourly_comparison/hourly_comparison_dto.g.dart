// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_comparison_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourlyComparisonDto _$$_HourlyComparisonDtoFromJson(
        Map<String, dynamic> json) =>
    _$_HourlyComparisonDto(
      firstDateHour: json['firstDateHour'] as int,
      firstDateOutCount: json['firstDateOutCount'] as int,
      firstDateInCount: json['firstDateInCount'] as int,
      firstDateTotal: json['firstDateTotal'] as int,
      secondDateHour: json['secondDateHour'] as int,
      secondDateOutCount: json['secondDateOutCount'] as int,
      secondDateInCount: json['secondDateInCount'] as int,
      secondDateTotal: json['secondDateTotal'] as int,
    );

Map<String, dynamic> _$$_HourlyComparisonDtoToJson(
        _$_HourlyComparisonDto instance) =>
    <String, dynamic>{
      'firstDateHour': instance.firstDateHour,
      'firstDateOutCount': instance.firstDateOutCount,
      'firstDateInCount': instance.firstDateInCount,
      'firstDateTotal': instance.firstDateTotal,
      'secondDateHour': instance.secondDateHour,
      'secondDateOutCount': instance.secondDateOutCount,
      'secondDateInCount': instance.secondDateInCount,
      'secondDateTotal': instance.secondDateTotal,
    };
