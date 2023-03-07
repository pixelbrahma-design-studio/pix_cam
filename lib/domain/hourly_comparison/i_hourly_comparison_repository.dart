import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly_comparison/hourly_comparison.dart';

abstract class IHourlyComparisonRepository {
  Future<Either<ServerFailure, KtList<HourlyComparison>>>
      fetchHourlyComparisonData();
}
