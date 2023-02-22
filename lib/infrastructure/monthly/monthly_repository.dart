import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:pix_cam/domain/monthly/i_monthly_repositiory.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';

@LazySingleton(as: IMonthlyRepository)
class MonthlyRepository implements IMonthlyRepository {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;
  @override
  Future<Either<ServerFailure, KtList<Monthly>>> fetchMonthlyData(
      String selectedMonth, String selectedYear) async {
    // write fetch function here
    return left(const ServerFailure.serverError());
  }
}
