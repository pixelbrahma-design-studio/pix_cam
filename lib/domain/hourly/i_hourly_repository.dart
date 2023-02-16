import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IHourlyRepository {
  Future<Either<ServerFailure, KtList<Hourly>>> fetchHourlyDataForDay(
      String selectedDate, String selectedMonth, String selectedYear);
}
