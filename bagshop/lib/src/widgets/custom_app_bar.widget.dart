import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget customLeading;
  final Widget customAction;

  CustomAppBar({this.height, this.customLeading, this.customAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: customLeading,
      actions: <Widget>[
        Container(
          width: 50.0,
          margin: EdgeInsets.only(right: 20.0),
          padding: EdgeInsets.only(
            top: 27.0,
            left: 10.0,
            right: 9.0,
          ),
          child: customAction,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
