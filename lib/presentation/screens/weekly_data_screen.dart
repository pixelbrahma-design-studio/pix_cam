import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/weekly/weekly_watcher/weekly_watcher_bloc.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../injection.dart';

class WeeklyDataScreen extends StatelessWidget {
  WeeklyDataScreen({Key? key}) : super(key: key);
  String selectedDate = DateTime.now().day.toString();
  String selectedMonth = DateTime.now().month.toString();
  String selectedYear = DateTime.now().year.toString();
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeeklyWatcherBloc>(
      create: (context) => getIt<WeeklyWatcherBloc>()
        ..add(
          WeeklyWatcherEvent.getWeeklyData(
              selectedDate, selectedMonth, selectedYear),
        ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<WeeklyWatcherBloc, WeeklyWatcherState>(
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
                      await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      ).then((value) {
                        if (value != null) {
                          print(value);
                          print(Timestamp.fromDate(value.start)
                              .millisecondsSinceEpoch);
                        }
                      });
                      // await showDatePicker(
                      //   context: context,
                      //   initialDate: DateTime.now(),
                      //   firstDate: DateTime(1900),
                      //   lastDate: DateTime(2100),
                      //   builder: (context, child) {
                      //     return Theme(
                      //       data: Theme.of(context).copyWith(
                      //         colorScheme: const ColorScheme.light(
                      //           primary: Colors.blue, // header background color
                      //           onSurface: Colors.black,
                      //         ),
                      //       ),
                      //       child: child!,
                      //     );
                      //   },
                      // ).then((pickedDate) {
                      //   if (pickedDate != null) {
                      //     String formattedDate =
                      //         DateFormat('dd-MM-yyyy').format(pickedDate);
                      //     print(pickedDate.day);

                      //     dateInput.text = formattedDate;
                      //     selectedDate = pickedDate.day.toString();
                      //     selectedMonth = pickedDate.month.toString();
                      //     selectedYear = pickedDate.year.toString();
                      //     BlocProvider.of<WeeklyWatcherBloc>(context).add(
                      //         WeeklyWatcherEvent.getWeeklyData(
                      //             selectedDate, selectedMonth, selectedYear));
                      //   }
                      // });
                    }),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<WeeklyWatcherBloc, WeeklyWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                loading: (value) => const CircularProgressIndicator(),
                success: (value) {
                  print('inside sload success');

                  print('Inside UI: ${value.weeklyData}');

                  List<Weekly> dataList = value.weeklyData.asList();

                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Weekly Count Data'),
                    // Enable legend
                    legend: Legend(
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                    enableSideBySideSeriesPlacement: true,
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: false),
                    series: <ChartSeries<Weekly, String>>[
                      ColumnSeries<Weekly, String>(
                        dataSource: dataList,
                        xValueMapper: (Weekly weekly, _) =>
                            weekly.day.toString(),
                        yValueMapper: (Weekly weekly, _) => weekly.inCount,
                        name: 'In Count',
                        yAxisName: 'HOUR',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                      ColumnSeries<Weekly, String>(
                        dataSource: dataList,
                        xValueMapper: (Weekly weekly, _) =>
                            weekly.day.toString(),
                        yValueMapper: (Weekly weekly, _) => weekly.outCount,
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
                failures: (value) {
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
