import 'package:flutter/material.dart';

class MuseumView extends StatelessWidget {
  const MuseumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Museus"),
        centerTitle: true,
        backgroundColor: const Color(0xff112776),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/craque.jpeg',
                        fit: BoxFit.cover,
                        height: 150,
                        width: MediaQuery.of(context).size.width,
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
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text(
                                'Phyno da bola',
                                style: TextStyle(
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
                              children: const [
                                Icon(Icons.location_on),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Avendia São Carlos - 450'),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Icon(Icons.calendar_month),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('8h - 18h'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Exercitation ad eu nostrud qui qui voluptate voluptate. Magna culpa commodo enim incididunt labore ex proident tempor dolor esse Lorem nostrud. Pariatur laboris adipisicing culpa nulla proident consectetur.',
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
