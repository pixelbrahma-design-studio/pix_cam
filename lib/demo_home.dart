import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

class DemoHome extends StatefulWidget {
  String title;
  DemoHome({Key? key, required this.title}) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  dynamic rowData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: rowData != null ? Text(rowData.toString()) : const Text('no data'),
      ),
      drawer: Drawer(
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
            ListTile(
              title: const Text('Det Data'),
              onTap: () async {
                print('on click');
                setState(() async {
                  rowData = await getTableData();
                });

                Navigator.pop(context);
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
      ),
    );
  }

  Future<dynamic> getTableData() async {
    HttpsCallable callable =
    FirebaseFunctions.instance.httpsCallable('fetchDataQuery');
    final results = await callable();
    var itemsList = results.data;

    return itemsList;

  }
}
