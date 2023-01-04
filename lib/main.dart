import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pix_cam/firebase/dev/firebase_options.dart' as dev;
import 'package:pix_cam/firebase/prod/firebase_options.dart' as prod;
import 'package:pix_cam/my_home_page.dart';
import 'flavor_settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FlavorSettings? settings;

  if(!kIsWeb) {
    settings = await _getFlavorSettings();

    if(settings.flavor == 'dev') {
      await Firebase.initializeApp(
        options: dev.DefaultFirebaseOptions.currentPlatform,
      );
    }else {
      await Firebase.initializeApp(
        options: prod.DefaultFirebaseOptions.currentPlatform,
      );
    }
  } else {
    settings = null;
  }

  runApp(MyApp(selectedFlavor: kIsWeb ? 'prod' :  settings!.flavor,));
}

Future<FlavorSettings> _getFlavorSettings() async {
  String? flavor = await const MethodChannel('flavor')
      .invokeMethod<String>('getFlavor');

  print('STARTED WITH FLAVOR $flavor');

  if (flavor == 'dev') {
    return FlavorSettings.dev();
  } else if (flavor == 'prod') {
    return FlavorSettings.prod();
  } else {
    throw Exception("Unknown flavor: $flavor");
  }
}

class MyApp extends StatelessWidget {
  String selectedFlavor;
  MyApp({super.key, required this.selectedFlavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: selectedFlavor == 'dev' ? true : false,
      title: 'Pix Cam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pix Cam'),
    );
  }
}
