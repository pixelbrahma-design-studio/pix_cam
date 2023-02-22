part of 'monthly_watcher_bloc.dart';

@freezed
class MonthlyWatcherEvent with _$MonthlyWatcherEvent {
  factory MonthlyWatcherEvent.getMonthlyData(
      String selectedMonth, String selectedYear) = _GetMonthlyData;
  factory MonthlyWatcherEvent.monthlyDataReceived(
          Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData) =
      _MonthlyDataReceived;
}
