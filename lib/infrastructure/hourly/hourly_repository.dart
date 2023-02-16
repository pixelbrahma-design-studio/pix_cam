import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart';

@LazySingleton(as: IHourlyRepository)
class HourlyRepository implements IHourlyRepository {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  @override
  Future<Either<ServerFailure, KtList<Hourly>>> fetchHourlyDataForDay(
      String selectedDate, String selectedMonth, String selectedYear) async {
    try {
      HttpsCallable callable = _functions.httpsCallable('fetchDataQuery');
      final results = await callable.call({
        'selectedDay': selectedDate,
        'selectedMonth': selectedMonth,
        'selectedYear': selectedYear,
      });

      Map<String, String> dataJson = jsonDecode(results.data);

      print('dprei: ${dataJson}');
      // dataJson.map((key, value) {
      //   print('value:: $value');

      // });

      KtList<Hourly> testList = [Hourly.empty()].kt;

      return right(testList);
    } catch (e) {
      return left(const ServerFailure.unexpected());
    }
  }
}
