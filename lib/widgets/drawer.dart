import 'package:flutter/material.dart';
import 'package:pix_cam/demo_home.dart';
import 'package:pix_cam/utils/sf_date_picker_screen.dart';
import 'package:pix_cam/utils/snackbar.dart';

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
            title: const Text('Daily Data'),
            onTap: () async {
              // hide drawer
              Navigator.pop(context);

              // show date picker
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DemoHome(
                    title: 'Daily Data',
                    pageNumber: 0,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Weekly Data'),
            onTap: () async {
              // hide drawer
              Navigator.pop(context);

              // show date picker
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DemoHome(
                    title: 'Daily Data',
                    pageNumber: 1,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
