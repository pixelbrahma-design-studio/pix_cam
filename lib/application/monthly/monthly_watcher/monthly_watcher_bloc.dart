
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import '../../../domain/core/server_failure.dart';
import '../../../domain/monthly/i_monthly_repository.dart';
import '../../../domain/monthly/monthly.dart';

part 'monthly_watcher_event.dart';
part 'monthly_watcher_state.dart';
part 'monthly_watcher_bloc.freezed.dart';

@injectable
class MonthlyWatcherBloc extends Bloc<MonthlyWatcherEvent, MonthlyWatcherState> {
 IMonthlyRepository _iMonthlyRepository;
  MonthlyWatcherBloc(this._iMonthlyRepository)
      : super(MonthlyWatcherState.initial()) {
    on<MonthlyWatcherEvent>((event, emit) async{
      await emit.onEach(mapEventToState(event),
      onData: (MonthlyWatcherState state){
        emit(state);
      });
    });
  }

  Stream<MonthlyWatcherState> mapEventToState(MonthlyWatcherEvent event) async*{
    yield* event.map(
        getMontlyData: (e) async*{
          yield const MonthlyWatcherState.loading();
          _iMonthlyRepository
              .getMonthlyData(e.selectedDate, e.selectedMonth, e.selectedYear)
              .then((value) {
                add(MonthlyWatcherEvent.monthlyDataReceived(value));
          });
        },

        monthlyDataReceived: (e)async*{
          yield e.failureOrHourlydata.fold(
              (failure) => MonthlyWatcherState.failures(failure),
              (monthlyData) => MonthlyWatcherState.success(monthlyData));
        });
  }
}
