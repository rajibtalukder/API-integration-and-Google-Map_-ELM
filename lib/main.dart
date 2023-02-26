
import 'package:elm/service/local/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'constant/value.dart';
import 'mvc/view/page/home.dart';
Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    token = await SharedPref().getValue('token') ?? '';
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
        .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Home(),
    );
  }
}
