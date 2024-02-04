import 'package:flutter/material.dart';
import '../../config/menu_items.dart';
import 'nav_item.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({required this.width, super.key});
  final double width;

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(5),
        child: widget.width > 1000
            ? Row(
                children: <Widget>[
                  for (int i = 0; i < menuItems.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: NavItem(menuItems[i], () => <dynamic>{}),
                    ),
                  const Spacer(),
                  Image.asset(
                    "logo.png",
                    width: 150,
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    "logo.png",
                    width: 150,
                  ),
                ],
              ),
      );
}
