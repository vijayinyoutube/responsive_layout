import 'package:flutter/material.dart';

class ResponsiveLayoutClass extends StatelessWidget {
  const ResponsiveLayoutClass(
      {Key? key,
      required this.mobileView,
      required this.tabletView,
      required this.desktopView})
      : super(key: key);

  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return mobileView;
          } else if (constraints.maxWidth >= 601 &&
              constraints.maxWidth <= 900) {
            return tabletView;
          } else {
            return desktopView;
          }
        },
      ),
    );
  }
}
