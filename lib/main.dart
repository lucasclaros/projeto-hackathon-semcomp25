import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sou Torcedor',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text("Sou Torcedor"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
        backgroundColor: const Color(0xff112776),
      ),
      drawer: Drawer(
        child: Column(
          children: const [],
        ),
      ),
      body: const ListNews(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff009c3b),
        selectedItemColor: const Color(0xffffdf00),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in_rounded),
            label: 'Missões',
          ),
        ],
      ),
    );
  }
}
