import 'package:flutter/material.dart';
import '../../config/colors.dart';
import '../../config/menu_items.dart';
import 'nav_item.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
      backgroundColor: secondaryBgColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // padding: EdgeInsets.zero,
          children: <Widget>[
            for (int i = 0; i < menuItems.length; i++)
              NavItem(menuItems[i], () => <dynamic>{}),
          ],
        ),
      ));
}
