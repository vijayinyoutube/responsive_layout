import 'package:flutter/material.dart';
import 'package:responsive_layout/Screens/ResponsiveLayout/RenderRespLayout.dart';

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
        body: _size.width >= 205
            ? Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      width: 15.00,
                    ),
                  ),
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
                  SizedBox(
                    width: 15.00,
                  ),
                  Flexible(
                    child: Text(
                      "Vijay Creations",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )
            : Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 15.00,
                    ),
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
                    SizedBox(
                      width: 15.00,
                    ),
                    Flexible(
                      child: Text(
                        "Vijay Creations",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
      );
}

Widget buildSideBar() => Container(
      width: 200,
      color: Colors.purple,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                //decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  "assets/Images/Flutter.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 15.00,
              ),
              Text(
                "Vijay Creations",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ],
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
