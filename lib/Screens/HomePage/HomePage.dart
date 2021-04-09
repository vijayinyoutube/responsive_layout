import 'Layouts/MobileView/MobileView.dart';
import 'Widgets/SideBarMenu.dart';
import 'BreakPoints/BreakPoints.dart';
import 'package:flutter/material.dart';

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
        tabletView: buildSideBar(),
        desktopView: buildSideBar(),
      ),
    );
  }
}
