import 'BreakPoints/BreakPoints.dart';
import 'package:flutter/material.dart';
import 'Layouts/TabletView/TabletView.dart';
import 'Layouts/MobileView/MobileView.dart';
import 'Layouts/DesktopView/DesktopView.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayoutClass(
        mobileView: MobileViewLayout(),
        tabletView: TabletViewLayout(),
        desktopView: DeskTopViewLayout(),
      ),
    );
  }
}
