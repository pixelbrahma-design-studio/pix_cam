import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:pix_cam/domain/monthly/i_monthly_repositiory.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';
import 'package:pix_cam/infrastructure/monthly/monthly_dtos.dart';

@LazySingleton(as: IMonthlyRepository)
class MonthlyRepository implements IMonthlyRepository {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;
  @override
  Future<Either<ServerFailure, KtList<Monthly>>> fetchMonthlyData(
      int selectedMonth, int selectedYear) async {
    try {
      print("$selectedMonth , $selectedYear");
      HttpsCallable callable =
          _functions.httpsCallable("fetchMonthlyDataQuery");

      final result =
          await callable.call({'month': selectedMonth, 'year': selectedYear});
      List dataList = result.data[0];
      print(dataList);
      KtList<Monthly> monthyData = dataList.map((e) {
        return MonthlyDto.fromJson(jsonDecode(jsonEncode(e))).toDomain();
      }).toImmutableList();
      return right(monthyData);
    } on FirebaseFunctionsException catch (error) {
      print('message: ${error.message}');
      print('error details: ${error.details}');
      return left(const ServerFailure.serverError());
    }
  }
}
