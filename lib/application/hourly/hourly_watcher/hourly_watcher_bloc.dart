import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart';

part 'hourly_watcher_event.dart';
part 'hourly_watcher_state.dart';
part 'hourly_watcher_bloc.freezed.dart';

@injectable
class HourlyWatcherBloc extends Bloc<HourlyWatcherEvent, HourlyWatcherState> {
  final IHourlyRepository _hourlyRepository;

  HourlyWatcherBloc(this._hourlyRepository)
      : super(const HourlyWatcherState.initial()) {
    on<HourlyWatcherEvent>((event, emit) async {
      await emit.onEach(mapEventToState(event),
          onData: (HourlyWatcherState state) {
        emit(state);
      });
    });
  }

  Stream<HourlyWatcherState> mapEventToState(
    HourlyWatcherEvent event,
  ) async* {
    yield* event.map(
      getHourlyDataForDay: (e) async* {
        print('printing inside bloc: call received');
        yield const HourlyWatcherState.loadInProgress();
        _hourlyRepository
            .fetchHourlyDataForDay(
                e.selectedDate, e.selectedMonth, e.selectedYear)
            .then((hourlyData) =>
                add(HourlyWatcherEvent.hourlyDataForDayReceived(hourlyData)));
      },

      hourlyDataForDayReceived: (e) async* {
        yield e.failureOrHourlyData.fold(
          (l) => HourlyWatcherState.loadFailed(l),
          (hourlyData) => HourlyWatcherState.loadSuccess(hourlyData),
        );
      },
      // watchAllStarted: (e) async* {
      //   yield const ProductsWatcherState.loadInProgress();
      //   await _productStreamSubscription?.cancel();
      //   _productStreamSubscription = _productRepository.watchAll().listen(
      //         (products) => add(
      //           ProductsWatcherEvent.productReceived(products),
      //         ),
      //       );
      // }, watchFetchProductById: (e) async* {
      //   yield const ProductsWatcherState.loadInProgress();
      //   await _singleProductStreamSubscription?.cancel();
      //   _singleProductStreamSubscription = _productRepository
      //       .watchFetchProductById(e.productId)
      //       .listen((product) => add(
      //             ProductsWatcherEvent.singleProductReceived(product),
      //           ));
      // }, watchFilteredProductByCategoryStarted: (e) async* {
      //   yield const ProductsWatcherState.loadInProgress();
      //   await _productStreamSubscription?.cancel();
      //   _productStreamSubscription = _productRepository
      //       .watchProductsByCategoryFiltered(e.category)
      //       .listen((filteredProducts) => add(
      //             ProductsWatcherEvent.productReceived(filteredProducts),
      //           ));
      // }, watchFilteredProductByQuarterStarted: (e) async* {
      //   yield const ProductsWatcherState.loadInProgress();
      //   await _productStreamSubscription?.cancel();
      //   _productStreamSubscription = _productRepository
      //       .watchProductsByQuarterFiltered(e.quarter)
      //       .listen((filteredProducts) => add(
      //             ProductsWatcherEvent.productReceived(filteredProducts),
      //           ));
      // }, watchFilteredProductStarted: (e) async* {
      //   yield const ProductsWatcherState.loadInProgress();
      //   await _productStreamSubscription?.cancel();
      //   _productStreamSubscription = _productRepository
      //       .watchFilteredProductStarted(e.selectedQuarter, e.category)
      //       .listen((filteredProducts) => add(
      //             ProductsWatcherEvent.productReceived(filteredProducts),
      //           ));
      // }, productReceived: (e) async* {
      //   yield e.failureOrProducts.fold(
      //     (f) => ProductsWatcherState.loadFailure(f),
      //     (products) => ProductsWatcherState.loadSuccess(products),
      //   );
      // }, singleProductReceived: (e) async* {
      //   yield e.failureOrProduct.fold(
      //     (f) => ProductsWatcherState.loadFailure(f),
      //     (product) => ProductsWatcherState.singleProductLoadSuccess(product),
      //   );
    );
  }
}
