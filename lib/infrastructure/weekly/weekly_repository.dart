import 'dart:convert';


import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:pix_cam/domain/weekly/i_weekly_repository.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
import 'package:pix_cam/infrastructure/weekly/weekly_dtos.dart';

@LazySingleton(as: IWeeklyRepository)
class WeeklyRepository implements IWeeklyRepository {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;
  @override
  Future<Either<ServerFailure, KtList<Weekly>>> getWeeklyData(
     String timeStamp
      ) async {
    print(
        'inside weekly repository: function called : selectedtimestamp: $timeStamp,'

        );
    try {
      // write Weekly get data function here
      HttpsCallable callable = _functions.httpsCallable('fetchWeeklyDataQuery'); //fetchWeeklyDataQuery
      final results = await callable.call({
        'date' : timeStamp,
      });

      List dataList = results.data[0];

      KtList<Weekly> hourlyData = dataList.map((e) {
        print('Day dataList - e ${jsonEncode(e)}');

        return WeeklyDto.fromJson(jsonDecode(jsonEncode(e))).toDomain();
      }).toImmutableList();

      return right(hourlyData);
    } on FirebaseFunctionsException catch (error) {
      print('message: ${error.message}');
      print('error details: ${error.details}');

      return left(const ServerFailure.unexpected());
    }
  }
}

