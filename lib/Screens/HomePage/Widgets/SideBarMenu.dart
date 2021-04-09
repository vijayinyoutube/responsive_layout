import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';

Widget buildSideBar() => Container(
      width: 200,
      color: Colors.purple,
      child: SingleChildScrollView(
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
            for (var i = 0; i < 25; i++)
              i == 0
                  ? buildItem("Item ${(i)}", true)
                  : buildItem("Item ${(i)}", false),
          ],
        ),
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

Widget buildItem(String itemName, bool isSelected) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.00),
      child: Container(
        color: isSelected ? Colors.white.withOpacity(0.25) : Colors.transparent,
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
    );
