

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/monthly/monthly_watcher/monthly_watcher_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/monthly/monthly.dart';
import '../../injection.dart';

class MonthlyDataScreen extends StatelessWidget {
  MonthlyDataScreen({Key? key}) : super(key: key);
  String selectedDate = DateTime.now().day.toString();
  String selectedMonth = DateTime.now().month.toString();
  String selectedYear = DateTime.now().year.toString();
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MonthlyWatcherBloc>(
        create: (context) => getIt<MonthlyWatcherBloc>()
    ..add(
      MonthlyWatcherEvent.getMontlyData(
          selectedDate, selectedMonth, selectedYear)
    ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<MonthlyWatcherBloc ,MonthlyWatcherState>(
              builder: (context, state){
                return   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                        builder: (context ,child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                  primary: Colors.blue, // header background color
                                  onSurface: Colors.black,
                                ),
                              ),
                              child: child!,
                            );
                        }
                      ).then((pickedDate) {
                        if(pickedDate != null) {
                           String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                           print(pickedDate.day);

                           dateInput.text = formattedDate;
                           selectedDate = pickedDate.day.toString();
                           selectedMonth = pickedDate.month.toString();
                           selectedYear = pickedDate.year.toString();
                           BlocProvider.of<MonthlyWatcherBloc>(context).add(
                               MonthlyWatcherEvent.getMontlyData(
                                   selectedDate, selectedMonth, selectedYear));
                        }
                      });
                    }),
                );
              }
              ),
          const SizedBox(
            height: 20,
          ),

          BlocBuilder<MonthlyWatcherBloc, MonthlyWatcherState>(
              builder: (context ,state){
                return state.maybeMap(
                  loading: (value) => const CircularProgressIndicator(),
                    success: (value) {

                      print('inside load success');

                      print('Inside UI: ${value.monthlyData}');

                      List<Monthly> dataList = value.monthlyData.asList();

                      return SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        title: ChartTitle(text: 'Monthly Count Data'),
                        legend: Legend(
                          isVisible: true,
                          position: LegendPosition.bottom,
                        ),
                        enableSideBySideSeriesPlacement: true,
                        // Enable tooltip
                        tooltipBehavior: TooltipBehavior(enable: false),
                          series: <ChartSeries<Monthly, String>>[
                      ColumnSeries<Monthly, String>(
                        dataSource: dataList,
                        xValueMapper: (Monthly monthly, _) =>
                            monthly.hour.toString(),
                        yValueMapper: (Monthly monthly, _) => monthly.inCount,
                        name: 'In Count',
                        yAxisName: 'HOUR',
                        xAxisName: 'COUNT',
                        dataLabelSettings:
                        const DataLabelSettings(isVisible: true),
                      ),

                            ColumnSeries<Monthly, String>(
                              dataSource: dataList,
                              xValueMapper: (Monthly monthly, _) =>
                                  monthly.hour.toString(),
                              yValueMapper: (Monthly monthly, _) => monthly.outCount,
                              name: 'Out Count',
                              yAxisName: 'HOUR',
                              xAxisName: 'COUNT',

                              // Enable data label
                              dataLabelSettings:
                              const DataLabelSettings(isVisible: true),
                            ),
                          ]
                      );
                    },
                    failures: (value) {
                  return const Text('load failed');
                },
                orElse: () => const Text('Or Else'),
                );
              })
        ],
      ),
    );
  }
}
