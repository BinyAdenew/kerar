import 'package:flutter/material.dart';
import 'loading.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyApp());
}

// void main() {
//   runApp( 
//     DevicePreview(
//     enabled: true,
//     builder: (context) => const MyApp(),
//   ),
    
// );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Dire_Dawa',
      ),
      title: "Kerar",
      home: const Scaffold(
        body: Loading(),
      ),
    );
  }
}
