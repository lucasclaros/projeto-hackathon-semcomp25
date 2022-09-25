import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_option_item.dart';

class ListOptions extends StatelessWidget {
  const ListOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListOptionItem();
        });
  }
}
