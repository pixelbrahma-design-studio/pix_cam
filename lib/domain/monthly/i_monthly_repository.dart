import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';

abstract class IMonthlyRepository{
  Future<Either<ServerFailure, KtList<Monthly>>> getMonthlyData(
      String selectedDate, String selectedMonth, String selectedYear);
}