import 'package:flutter/material.dart';

class ListOptionItem extends StatelessWidget {
  const ListOptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 150,
        color: Colors.blue[400],
      ),
    );
  }
}
