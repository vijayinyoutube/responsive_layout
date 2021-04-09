import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';
import 'package:responsive_layout/Screens/ResponsiveLayout/RenderRespLayout.dart';

import 'Widgets/SideBarMenu.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayoutClass(
        mobileView: buildMobileView(_size),
        tabletView: buildSideBar(),
        desktopView: buildSideBar(),
      ),
    );
  }

  Widget buildMobileView(Size _size) => Scaffold(
      drawer: buildDrawer(context, _size),
      key: _scaffoldKey,
      body: _size.width >= 205 ? buildRowLayout(_size) : buildColLayout(_size));
}

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




Widget buildDrawer(BuildContext context, Size _size) => Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
                "assets/Images/ChatImage.png",
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
