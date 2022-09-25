import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/data/helpers.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_missions_item.dart';

class ListMissions extends StatefulWidget {
  const ListMissions({
    Key? key,
  }) : super(key: key);

  @override
  State<ListMissions> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListMissions>
    with AutomaticKeepAliveClientMixin<ListMissions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double progress = 0.4;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: height - 169,
            width: width,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListMissionsItem(
                  mission: missions[index],
                );
              },
              itemCount: missions.length,
            ),
          ),
          SizedBox(
            height: 20,
            child: LinearProgressIndicator(
              value: progress,
              color: const Color(0xff02fe45),
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
