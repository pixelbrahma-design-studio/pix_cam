import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart';
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart';
import 'package:pix_cam/injection.dart';
import 'package:pix_cam/models/event.dart';
import 'package:pix_cam/models/result.dart';
import 'package:pix_cam/presentation/screens/daily_data_screen.dart';
import 'package:pix_cam/presentation/screens/weekly_data_screen.dart';
import 'package:pix_cam/utils/utils.dart';
import 'package:pix_cam/widgets/drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DemoHome extends StatefulWidget {
  String title;
  int pageNumber;
  DemoHome({
    Key? key,
    required this.title,
    required this.pageNumber,
  }) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(
      initialPage: widget.pageNumber,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      drawer: const Utils().isMobile(context) ? const DrawerWidget() : null,
      body: Row(
        children: [
          if (!const Utils().isMobile(context)) const DrawerWidget(),
          Flexible(
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DailyDataScreen(),
                WeeklyDataScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
