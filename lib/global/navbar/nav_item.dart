import 'package:flutter/material.dart';

import '../../config/colors.dart';

class NavItem extends StatefulWidget {
  const NavItem(this._text, this._action, {super.key});
  final Function _action;
  final String _text;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHovered = false;

  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }

  @override
  Widget build(BuildContext context) => MouseRegion(
        onEnter: (_) => _onHoverChanged(enabled: true),
        onExit: (_) => _onHoverChanged(enabled: false),
        child: GestureDetector(
          onTap: () => widget._action,
          child: Text(
            widget._text,
            style: TextStyle(
              color: _isHovered
                  ? primaryTextHoverButtonColor
                  : primaryTextButtonColor,
              fontSize: _isHovered ? 19 : 18.6,
            ),
          ),
        ),
      );
}
