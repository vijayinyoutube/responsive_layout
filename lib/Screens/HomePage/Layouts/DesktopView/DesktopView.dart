import 'package:flutter/material.dart';
import 'package:responsive_layout/Screens/HomePage/Widgets/Drawer.dart';

class DeskTopViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      child: buildDrawer(context, _size),
    );
  }
}
