import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';

abstract class IWeeklyRepository {
  Future<Either<ServerFailure, KtList<Weekly>>> getWeeklyData(
      String timeStamp
  );
}
