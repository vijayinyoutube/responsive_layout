import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';

class Siderbar extends StatefulWidget {
  @override
  _SiderbarState createState() => _SiderbarState();
}

class _SiderbarState extends State<Siderbar> {
  Color primaryColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildSideBar(),
    );
  }

  Widget buildSideBar() => Container(
        width: 200,
        color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSpacer(15.00),
            buildLogoHeader(),
            heightSpacer(5.00),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: buildDivider(0.5, Colors.white),
            ),
            heightSpacer(10.00),
            Expanded(
              child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return buildItem("Item ${(index)}");
                  }),
            ),
            //for (var i = 0; i < 25; i++)
          ],
        ),
      );

  Widget buildLogoHeader() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset(
              "assets/Images/Flutter.png",
              fit: BoxFit.contain,
            ),
          ),
          widthSpacer(5.5),
          Text(
            "Vijay Creations",
            style: TextStyle(color: Colors.white, fontSize: 20.00),
          ),
        ],
      );

  Widget buildItem(String itemName) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.00),
        child: MouseRegion(
          onHover: (PointerEvent event) {
            setState(() {
              primaryColor = Colors.white.withOpacity(0.25);
            });
          },
          onExit: (PointerEvent event) {
            setState(() {
              primaryColor = Colors.transparent;
            });
          },
          child: Container(
            color: primaryColor,
            width: double.infinity,
            height: 35.00,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.00),
                child: Text(
                  itemName,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      );

  changeColor() {
    setState(() {
      print("hovered");
      primaryColor = Colors.white.withOpacity(0.25);
    });
  }
}
