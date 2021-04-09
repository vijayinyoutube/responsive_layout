import 'package:flutter/material.dart';
import 'package:responsive_layout/GeneralWidgets/GWidgets.dart';

class ListItem<T> {
  bool isSelected = false;
  T data;
  ListItem(this.data);
}

class Siderbar extends StatefulWidget {
  @override
  _SiderbarState createState() => _SiderbarState();
}

class _SiderbarState extends State<Siderbar> {
  var list = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 25; i++) list.add(ListItem<String>("item $i"));
  }

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
              itemCount: list.length,
              itemBuilder: buildItem,
            )),
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
           widthSpacer(10.00),
        ],
      );

  Widget buildItem(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: MouseRegion(
          onHover: (PointerEvent event) {
            setState(() {
              list[index].isSelected = true;
            });
          },
          onExit: (PointerEvent event) {
            setState(() {
              list[index].isSelected = false;
            });
          },
          child: Container(
            color: list[index].isSelected
                ? Colors.white.withOpacity(0.25)
                : Colors.transparent,
            width: double.infinity,
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.00),
                child: Text(
                  list[index].data,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      );
}
