import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';

Widget buildSideBar() => Container(
      width: 200,
      color: Colors.purple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          heightSpacer(10.00),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/Images/Flutter.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Vijay Creations",
                style: TextStyle(color: Colors.white, fontSize: 20.00),
              ),
            ],
          ),
        ],
      ),
    );
