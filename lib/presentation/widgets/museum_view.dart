import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/data/helpers.dart';

class MuseumView extends StatelessWidget {
  const MuseumView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Museus"),
        centerTitle: true,
        backgroundColor: const Color(0xff112776),
      ),
      body: ListView.builder(
          itemCount: museums.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 150,
                        child: index == 0
                            ? Image.asset(
                                museums[index].imageUrl,
                                fit: BoxFit.cover,
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                              )
                            : Image.network(
                                museums[index].imageUrl,
                                height: 150,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.black54,
                              Colors.black45,
                              Colors.black38,
                              Colors.black26,
                              Colors.transparent,
                            ]),
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text(
                                museums[index].title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 220,
                                  child: Text(
                                    museums[index]
                                        .address
                                        .replaceAll("", "\u{200B}"),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  museums[index].oppeningTime,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Text(
                            museums[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
