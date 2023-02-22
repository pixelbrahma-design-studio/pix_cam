import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/monthly/i_monthly_repository.dart';
import 'package:pix_cam/infrastructure/monthly/monthly_dtos.dart';

import '../../domain/monthly/monthly.dart';

@LazySingleton(as: IMonthlyRepository)
class MonthlyRepository implements IMonthlyRepository{
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  @override
  Future<Either<ServerFailure, KtList<Monthly>>> getMonthlyData(

      String selectedDate, String selectedMonth, String selectedYear) async {

    print(
        'inside monthly repository: function called : selectedDate: $selectedDate, selectedMonth: $selectedMonth, selectedYear: $selectedYear');

    try{
      HttpsCallable callable = _functions.httpsCallable('fetchDataQuery');
      final results = await callable.call({
        'selectedDay': selectedDate,
        'selectedMonth': selectedMonth,
        'selectedYear': selectedYear,
      });

      List dataList = results.data[0];

      KtList<Monthly> monthlyData = dataList.map<Monthly>((e) {
        print('dataList - e ${jsonEncode(e)}');

        return MonthlyDto.fromJson(jsonDecode(jsonEncode(e))).toDomain();
      }).toImmutableList();

      return right(monthlyData);
    } on FirebaseFunctionsException catch (error) {
      print('message: ${error.message}');
      print('error details: ${error.details}');

      return left(const ServerFailure.unexpected());
    }
  }
}