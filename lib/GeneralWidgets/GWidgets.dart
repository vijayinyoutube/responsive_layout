import 'package:flutter/material.dart';

Widget heightSpacer(double myHeight) => SizedBox(height: myHeight);

Widget widthSpacer(double myWidth) => SizedBox(width: myWidth);

Widget buildDivider(double myThickness, Color myColor) => Divider(
      thickness: myThickness,
      color: myColor,
    );
