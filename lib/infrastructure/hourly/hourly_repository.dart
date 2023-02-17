import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart';
import 'package:pix_cam/infrastructure/hourly/hourly_dtos.dart';

@LazySingleton(as: IHourlyRepository)
class HourlyRepository implements IHourlyRepository {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  @override
  Future<Either<ServerFailure, KtList<Hourly>>> fetchHourlyDataForDay(
      String selectedDate, String selectedMonth, String selectedYear) async {
    print(
        'insid erepository: functionn called : selectedDate: $selectedDate, selectedMonth: $selectedMonth, selectedYear: $selectedYear');
    try {
      HttpsCallable callable = _functions.httpsCallable('fetchDataQuery');
      final results = await callable.call({
        'selectedDay': selectedDate,
        'selectedMonth': selectedMonth,
        'selectedYear': selectedYear,
      });

      List dataList = results.data[0];

      KtList<Hourly> hourlyData = dataList.map((e) {
        print('dataList - e ${jsonEncode(e)}');

        return HourlyDto.fromJson(jsonDecode(jsonEncode(e))).toDomain();
      }).toImmutableList();

      return right(hourlyData);
    } on FirebaseFunctionsException catch (error) {
      print('message: ${error.message}');
      print('error details: ${error.details}');

      return left(const ServerFailure.unexpected());
    }
  }
}
