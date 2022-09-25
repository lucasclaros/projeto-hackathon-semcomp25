import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.function,
  });

  final Icon icon;
  final String title;
  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function ?? () {},
      leading: icon,
      title: Text(title),
    );
  }
}
