import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final db = FirebaseFirestore.instance;

  String welcome = 'No data';

  @override
  initState()  {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: db.collection("title").doc('qbBF47yHDlQ76zacjzUg').get(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if(snapshot.hasError) {
                  return Text('Error');
                }
                if(snapshot.hasData) {
                  return Text(snapshot.data['name']);
                }else {
                  return Text('no data');
                }
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
