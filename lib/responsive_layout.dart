import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
  });

  final Widget mobileBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mobileBody;
        } else if (constraints.maxWidth > 600) {
          return tabletBody;
        } else {
          return mobileBody;
        }
      },
    );
  }
}
