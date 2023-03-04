part of 'monthly_watcher_bloc.dart';

@freezed
class MonthlyWatcherEvent with _$MonthlyWatcherEvent {
  factory MonthlyWatcherEvent.getMonthlyData(
      int selectedMonth, int selectedYear) = _GetMonthlyData;
  factory MonthlyWatcherEvent.monthlyDataReceived(
          Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData) =
      _MonthlyDataReceived;
}
