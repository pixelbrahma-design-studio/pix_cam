part of 'monthly_watcher_bloc.dart';

@freezed
 class MonthlyWatcherEvent with _$MonthlyWatcherEvent{

  const factory MonthlyWatcherEvent.getMontlyData(
  String selectedDate, String selectedMonth, String selectedYear) =
_GetMonthlyData;
  factory MonthlyWatcherEvent.monthlyDataReceived(
Either<ServerFailure, KtList<Monthly>> failureOrHourlydata,

) = _MonthlyDataReceived;
}
