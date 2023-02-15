import 'package:flutter/material.dart';
import 'package:pix_cam/demo_home.dart';
import 'package:pix_cam/utils/sf_date_picker_screen.dart';
import 'package:pix_cam/utils/snackbar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'PixCam Header',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // SfDateRangePicker(),
          ListTile(
            title: const Text('Select a Date'),
            onTap: () async {
              // hide drawer
              Navigator.pop(context);

              // show date picker
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SfDatePickerScreen(
                    dateRangePickerSelectionMode:
                        DateRangePickerSelectionMode.single,
                    onSubmit: (DateRangePickerSelectionChangedArgs args) {
                      print('selected Date : $args');
                      if(args.value != null) {
                        MaterialPageRoute(builder: (context) => DemoHome(title: 'ttest', selectedDateArgs: args,));
                        Navigator.pop(context);
                      }else {
                        showSnackBar(context, 'Please Select A Date');
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              );
              // var rowDataJson = await getTableData();
              // print('data before ${rowDataJson}');
              // rowDataJson[0].forEach((data) {
              //   print('inside map $data');
              //   rowData.add(Result.fromJson(data));
              // });
              //
              // print('data ${rowData}');
              //
              // setState(() {});
              //
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
