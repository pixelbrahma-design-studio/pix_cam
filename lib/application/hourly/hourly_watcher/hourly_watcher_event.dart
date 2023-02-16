part of 'hourly_watcher_bloc.dart';

@freezed
class HourlyWatcherEvent with _$HourlyWatcherEvent {
  // const factory HourlyWatcherEvent.started() = _Started;
  const factory HourlyWatcherEvent.getHourlyDataForDay(
          String selectedDate, String selectedMonth, String selectedYear) =
      _GetHourlyDataForDay;
  const factory HourlyWatcherEvent.hourlyDataForDayReceived(
    Either<ServerFailure, KtList<Hourly>> failureOrHourlyData,
  ) = _HourlyDataForDayReceived;
}
