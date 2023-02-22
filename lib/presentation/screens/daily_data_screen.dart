import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart';
import 'package:pix_cam/injection.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DailyDataScreen extends StatelessWidget {
  const DailyDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HourlyWatcherBloc blocs = HourlyWatcherBloc(HourlyRepository());
    // List<Result> rowData = [];
    DateTimeRange? dateTimeRange;

    String selectedDate = DateTime.now().day.toString();
    String selectedMonth = DateTime.now().month.toString();
    String selectedYear = DateTime.now().year.toString();

    TextEditingController dateInput = TextEditingController();

    return BlocProvider<HourlyWatcherBloc>(
      create: (context) => getIt<HourlyWatcherBloc>()
        ..add(
          HourlyWatcherEvent.getHourlyDataForDay(
              selectedDate, selectedMonth, selectedYear),
        ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<HourlyWatcherBloc, HourlyWatcherState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                    controller: dateInput,
                    readOnly: true,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.date_range,
                        size: 26,
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: Colors.blue, // header background color
                                onSurface: Colors.black,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      ).then((pickedDate) {
                        if (pickedDate == null) {
                          dateTimeRange = null;
                        } else {
                          String formattedDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(pickedDate.day);

                          print(dateTimeRange);
                          dateInput.text = formattedDate;
                          selectedDate = pickedDate.day.toString();
                          selectedMonth = pickedDate.month.toString();
                          selectedYear = pickedDate.year.toString();
                          BlocProvider.of<HourlyWatcherBloc>(context).add(
                              HourlyWatcherEvent.getHourlyDataForDay(
                                  selectedDate, selectedMonth, selectedYear));
                        }
                      });
                    }),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<HourlyWatcherBloc, HourlyWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                loadInProgress: (value) => const CircularProgressIndicator(),
                loadSuccess: (value) {
                  print('inside sload success');

                  print('Inside UI: ${value.hourlyData}');

                  List<Hourly> dataList = value.hourlyData.asList();

                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Daily Count Data'),
                    // Enable legend
                    legend: Legend(
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                    enableSideBySideSeriesPlacement: true,
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: false),
                    series: <ChartSeries<Hourly, String>>[
                      ColumnSeries<Hourly, String>(
                        dataSource: dataList,
                        xValueMapper: (Hourly hourly, _) =>
                            hourly.hour.toString(),
                        yValueMapper: (Hourly hourly, _) => hourly.inCount,
                        name: 'In Count',
                        yAxisName: 'HOUR',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                      ColumnSeries<Hourly, String>(
                        dataSource: dataList,
                        xValueMapper: (Hourly hourly, _) =>
                            hourly.hour.toString(),
                        yValueMapper: (Hourly hourly, _) => hourly.outCount,
                        name: 'Out Count',
                        yAxisName: 'HOUR',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                    ],
                  );

                  // return const Text('inside load success');
                },
                loadFailed: (value) {
                  return const Text('load failed');
                },
                orElse: () => const Text('Or Else'),
              );
            },
          )
        ],
      ),
    );
  }
}
