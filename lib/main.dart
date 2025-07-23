import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/devices/mobile_body.dart';
//import 'package:task/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final colorSchemeLight = ColorScheme.fromSeed(
  seedColor: Colors.green,
  brightness: Brightness.light,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      theme: ThemeData(colorScheme: colorSchemeLight).copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          decorationColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),

      home: MobileBody(),
    );
  }
}
