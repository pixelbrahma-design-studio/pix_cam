import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/injection.dart';
import 'package:pix_cam/models/event.dart';
import 'package:pix_cam/models/result.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DemoHome extends StatefulWidget {
  String title;
  DemoHome({Key? key, required this.title}) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  List<Result> rowData = [];
  DateTimeRange? dateTimeRange;
  TextEditingController dateInput = TextEditingController();
  String selectedDate = '20';
  String selectedMonth = '12';
  String selectedYear = '2022';

  List<String> days = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];

  List<String> months = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];

  List<String> years = [
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];


  Future<void> pickDateRange() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate:  DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme:  const ColorScheme.light(
              primary: Colors.blue, // header background color
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate == null) {
      dateInput.text = '';
      dateTimeRange = null;
    } else {
      setState(() {
        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
        //dateTimeRange = newDateRange;
        print(dateTimeRange);
        dateInput.text = formattedDate;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    dateInput.text = "";
    super.initState();
    print('inside: demo_home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider<HourlyWatcherBloc>(
        create: (context) => getIt<HourlyWatcherBloc>()
          ..add(
            HourlyWatcherEvent.getHourlyDataForDay(
                selectedDate, selectedMonth, selectedYear),
          ),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     const Text('Select Day'),
            //     const SizedBox(width: 20),
            //     DropdownButton(
            //       value: selectedDate,
            //       icon: const Icon(Icons.keyboard_arrow_down),
            //       items: days.map((String items) {
            //         return DropdownMenuItem(
            //           value: items,
            //           child: Text(items),
            //         );
            //       }).toList(),
            //       onChanged: (String? newValue) {
            //         setState(() {
            //           selectedDate = newValue!;
            //         });
            //       },
            //     ),
            //     const Spacer(),
            //     const Text('Select Month'),
            //     const SizedBox(width: 20),
            //     DropdownButton(
            //       value: selectedMonth,
            //       icon: const Icon(Icons.keyboard_arrow_down),
            //       items: months.map((String items) {
            //         return DropdownMenuItem(
            //           value: items,
            //           child: Text(items),
            //         );
            //       }).toList(),
            //       onChanged: (String? newValue) {
            //         setState(() {
            //           selectedMonth = newValue!;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   width: 10,
            // ),
            // const Text('Select Year'),
            // const SizedBox(width: 20),
            // DropdownButton(
            //   value: selectedYear,
            //   icon: const Icon(Icons.keyboard_arrow_down),
            //   items: years.map((String items) {
            //     return DropdownMenuItem(
            //       value: items,
            //       child: Text(items),
            //     );
            //   }).toList(),
            //   onChanged: (String? newValue) {
            //     setState(() {
            //       selectedYear = newValue!;
            //     });
            //   },
            // ),
            const SizedBox(height: 20,),

            Padding(
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
                onTap: pickDateRange,
              ),
            ),

            const SizedBox(height: 20,),
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
                      title: ChartTitle(text: 'Count Data'),
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
                          dataLabelSettings: DataLabelSettings(isVisible: true),
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
                          dataLabelSettings: DataLabelSettings(isVisible: true),
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

            // rowData != null ? Text(rowData.toString()) : const Text('no data'),
            // rowData.isEmpty
            //     ? const Text('No Data Available')
            //     :
            // SfCartesianChart(
            //         primaryXAxis: CategoryAxis(),
            //         // Chart title
            //         title: ChartTitle(text: 'Count Data'),
            //         // Enable legend
            //         legend: Legend(
            //           isVisible: true,
            //           position: LegendPosition.bottom,
            //         ),
            //         enableSideBySideSeriesPlacement: true,
            //         // Enable tooltip
            //         tooltipBehavior: TooltipBehavior(enable: false),
            //         series: <ChartSeries<Result, String>>[
            //           ColumnSeries<Result, String>(
            //             dataSource: rowData,
            //             xValueMapper: (Result result, _) =>
            //                 result.hour.toString(),
            //             yValueMapper: (Result result, _) => result.inCount,
            //             name: 'In Count',
            //             yAxisName: 'HOUR',
            //             xAxisName: 'COUNT',

            //             // Enable data label
            //             dataLabelSettings: DataLabelSettings(isVisible: true),
            //           ),
            //           ColumnSeries<Result, String>(
            //             dataSource: rowData,
            //             xValueMapper: (Result result, _) =>
            //                 result.hour.toString(),
            //             yValueMapper: (Result result, _) => result.outCount,
            //             name: 'Out Count',
            //             yAxisName: 'HOUR',
            //             xAxisName: 'COUNT',

            //             // Enable data label
            //             dataLabelSettings: DataLabelSettings(isVisible: true),
            //           ),
            //         ],
            //       ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     //Initialize the spark charts widget
            //     child: SfSparkLineChart.custom(
            //       //Enable the trackball
            //       trackball: SparkChartTrackball(
            //           activationMode: SparkChartActivationMode.tap),
            //       //Enable marker
            //       marker: SparkChartMarker(
            //           displayMode: SparkChartMarkerDisplayMode.all),
            //       //Enable data label
            //       labelDisplayMode: SparkChartLabelDisplayMode.all,
            //       xValueMapper: (int index) => data[index].year,
            //       yValueMapper: (int index) => data[index].sales,
            //       dataCount: 5,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'PixCam Header',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //       // ListTile(
      //       //   title: const Text('Fetch Count Data'),
      //       //   onTap: () async {
      //       //     var rowDataJson = await getTableData();
      //       //     print('data before ${rowDataJson}');
      //       //     rowDataJson[0].forEach((data) {
      //       //       print('inside map $data');
      //       //       rowData.add(Result.fromJson(data));
      //       //     });

      //       //     print('data ${rowData}');

      //       //     setState(() {});

      //       //     Navigator.pop(context);
      //       //   },
      //       // ),
      //       ListTile(
      //         title: const Text('Item 2'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  // Future<dynamic> getTableData() async {
  //   HttpsCallable callable =
  //       FirebaseFunctions.instance.httpsCallable('fetchDataQuery');
  //   final results = await callable.call({
  //     'query': 'some query',
  //     'selectedDay': selectedDate,
  //     'selectedMonth': selectedMonth,
  //     'selectedYear': selectedYear,
  //   });
  //   var itemsList = results.data;

  //   return itemsList;
  // }
}
