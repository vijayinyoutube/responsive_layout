import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';
import 'package:responsive_layout/Screens/HomePage/Widgets/Drawer.dart';

class MobileViewLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: buildDrawer(context, _size),
      key: _scaffoldKey,
      body: _size.width >= 205
          ? buildRowLayout(_size, _scaffoldKey)
          : buildColLayout(_size, _scaffoldKey),
    );
  }
}

Widget buildRowLayout(Size _size, GlobalKey<ScaffoldState> _scaffoldKey) => Row(
      children: [
        widthSpacer(15.00),
        _size.width <= 600 ? buildMenuIcon(_scaffoldKey) : SizedBox(),
        widthSpacer(15.00),
        buildTextVC(),
      ],
    );

Widget buildColLayout(Size _size, GlobalKey<ScaffoldState> _scaffoldKey) =>
    Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widthSpacer(15.00),
          _size.width <= 600 ? buildMenuIcon(_scaffoldKey) : SizedBox(),
          widthSpacer(15.00),
          buildTextVC(),
        ],
      ),
    );

Widget buildMenuIcon(GlobalKey<ScaffoldState> _scaffoldKey) => Flexible(
      child: IconButton(
        color: Colors.black,
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        icon: Icon(
          Icons.menu,
        ),
      ),
    );

Widget buildTextVC() => Flexible(
      child: Text(
        "Vijay Creations",
        style: TextStyle(color: Colors.black, fontSize: 20.00),
      ),
    );
