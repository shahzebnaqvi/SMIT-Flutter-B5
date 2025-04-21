import 'package:flutter/material.dart';

class MenuDrawerWidget extends StatelessWidget {
  final menuTitle;
  final menuIcon;
  final menufunc;
  const MenuDrawerWidget({super.key,required this.menuTitle,required this.menuIcon,required this.menufunc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        menufunc();
      },
      leading: Icon(menuIcon),
      title: Text(menuTitle),
    );
  }
}
