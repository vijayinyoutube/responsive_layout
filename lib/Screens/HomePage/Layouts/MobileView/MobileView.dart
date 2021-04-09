import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';
import 'package:responsive_layout/Screens/HomePage/Widgets/Drawer.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

Widget buildMobileView(BuildContext context, Size _size) => Scaffold(
    drawer: buildDrawer(context, _size),
    key: _scaffoldKey,
    body: _size.width >= 205 ? buildRowLayout(_size) : buildColLayout(_size));

Widget buildRowLayout(Size _size) => Row(
      children: [
        widthSpacer(15.00),
        _size.width <= 600
            ? Flexible(
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              )
            : SizedBox(),
        widthSpacer(15.00),
        Flexible(
          child: Text(
            "Vijay Creations",
            style: TextStyle(color: Colors.black, fontSize: 20.00),
          ),
        ),
      ],
    );

Widget buildColLayout(Size _size) => Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widthSpacer(15.00),
          _size.width <= 600
              ? Flexible(
                  child: IconButton(
                    color: Colors.black,
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                )
              : SizedBox(),
          widthSpacer(15.00),
          Flexible(
            child: Text(
              "Vijay Creations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
