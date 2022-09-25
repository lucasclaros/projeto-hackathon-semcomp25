import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/data/models/mission_model.dart';

class ListMissionsItem extends StatefulWidget {
  const ListMissionsItem({
    super.key,
    required this.mission,
  });

  final MissionModel mission;

  @override
  State<ListMissionsItem> createState() => _ListMissionsItemState();
}

class _ListMissionsItemState extends State<ListMissionsItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 5,
          ),
          child: Center(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              tileColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  widget.mission.title,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  widget.mission.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              trailing: IconButton(
                color: widget.mission.isCompleted
                    ? Colors.green
                    : Colors.grey[600],
                icon: Icon(
                  widget.mission.isCompleted
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
                onPressed: () {
                  setState(() {
                    widget.mission.isCompleted = !widget.mission.isCompleted;
                  });
                },
              ),
            ),
          ),
        ),
        Positioned(
          right: 12,
          bottom: 10,
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.mission.points.toString().padRight(2)} pontos',
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
