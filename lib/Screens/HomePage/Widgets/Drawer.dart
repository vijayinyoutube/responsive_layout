import 'package:flutter/material.dart';

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
            for (var i = 0; i < 25; i++)
              ListTile(
                title: Text('Item ${(i)}'),
                onTap: () => Navigator.pop(context),
              ),
          ],
        ),
      ),
    );
