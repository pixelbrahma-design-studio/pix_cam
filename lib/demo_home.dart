import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:pix_cam/models/result.dart';
import 'package:pix_cam/utils/utils.dart';
import 'package:pix_cam/widgets/drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class DemoHome extends StatefulWidget {
  String title;
  DateRangePickerSelectionChangedArgs? selectedDateArgs;
  DemoHome({
    Key? key,
    required this.title,
    this.selectedDateArgs,
  }) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  List<Result> rowData = [];

  String selectedDate = '24';
  String selectedMonth = '12';
  String selectedYear = '2022';

  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  @override
  void initState() {
    if(widget.selectedDateArgs != null) {
      if (widget.selectedDateArgs!.value is PickerDateRange) {
      } else if (widget.selectedDateArgs!.value is DateTime) {
        print('init selected date ${widget.selectedDateArgs!.value}');
        setState(() {
          selectedDate = DateTime(widget.selectedDateArgs!.value).day.toString();
          selectedMonth = DateTime(widget.selectedDateArgs!.value).month.toString();
          selectedYear = DateTime(widget.selectedDateArgs!.value).year.toString();
        });
        // get data from bigQuery
        getData();

      } else if (widget.selectedDateArgs!.value is List<DateTime>) {
      } else {
      }
    }else {
      // get data from bigQuery
      getData();
    }



    super.initState();
  }

  getData() async {
    var rowDataJson = await getTableData();
    print('data before ${rowDataJson}');
    rowDataJson[0].forEach((data) {
      print('inside map $data');
      rowData.add(Result.fromJson(data));
    });

    print('data ${rowData}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Utils().isMobile(context)
          ? AppBar(
              title: Text(widget.title),
            )
          : null,
      body: Row(
        children: [
          if (!const Utils().isMobile(context)) const DrawerWidget(),
          // site contents
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // rowData != null ? Text(rowData.toString()) : const Text('no data'),
                  rowData.isEmpty
                      ? const Center(
                          child: Text('No Data Available'),
                        )
                      : SfCartesianChart(
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
                          series: <ChartSeries<Result, String>>[
                            ColumnSeries<Result, String>(
                              dataSource: rowData,
                              xValueMapper: (Result result, _) =>
                                  result.hour.toString(),
                              yValueMapper: (Result result, _) =>
                                  result.inCount,
                              name: 'In Count',
                              yAxisName: 'HOUR',
                              xAxisName: 'COUNT',

                              // Enable data label
                              dataLabelSettings:
                                  const DataLabelSettings(isVisible: true),
                            ),
                            ColumnSeries<Result, String>(
                              dataSource: rowData,
                              xValueMapper: (Result result, _) =>
                                  result.hour.toString(),
                              yValueMapper: (Result result, _) =>
                                  result.outCount,
                              name: 'Out Count',
                              yAxisName: 'HOUR',
                              xAxisName: 'COUNT',

                              // Enable data label
                              dataLabelSettings:
                                  const DataLabelSettings(isVisible: true),
                            ),
                          ],
                        ),
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
          ),
        ],
      ),
      drawer: const Utils().isMobile(context) ? const DrawerWidget() : null,
    );
  }

  Future<dynamic> getTableData() async {
    HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('fetchDataQuery');
    final results = await callable.call({
      'query': 'some query',
      'selectedDay': selectedDate,
      'selectedMonth': selectedMonth,
      'selectedYear': selectedYear,
    });
    var itemsList = results.data;

    return itemsList;
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
}
