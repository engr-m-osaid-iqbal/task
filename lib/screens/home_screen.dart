import 'package:flutter/material.dart';
import 'package:task/devices/mobile_body.dart';
//import 'package:task/devices/tablet_body.dart';
//import 'package:task/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ResponsiveLayout(
      //   mobileBody: MobileBody(),
      //   tabletBody: TabletBody(),
      // ),
      body: MobileBody(),
    );
  }
}
