import 'Widgets/SideBarMenu.dart';
import 'BreakPoints/BreakPoints.dart';
import 'package:flutter/material.dart';
import 'Layouts/MobileView/MobileView.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayoutClass(
        mobileView: buildMobileView(context, _size),
        tabletView: buildSideBar(),
        desktopView: buildSideBar(),
      ),
    );
  }
}
