import 'package:injectable/injectable.dart';
import 'package:pix_cam/domain/hourly_comparison/hourly_comparison.dart';

import 'package:pix_cam/domain/core/server_failure.dart';

import 'package:kt_dart/src/collection/kt_list.dart';

import 'package:dartz/dartz.dart';

import '../../domain/hourly_comparison/i_hourly_comparison_repository.dart';

@LazySingleton(as: IHourlyComparisonRepository)
class HourlyComparisonRepository extends IHourlyComparisonRepository {
  @override
  Future<Either<ServerFailure, KtList<HourlyComparison>>>
      fetchHourlyComparisonData() async {
    // TODO : Write get function

    return left(ServerFailure.serverError());
  }
}
