import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_semcomp/presentation/widgets/drawer_item.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_missions.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_news.dart';
import 'package:hackathon_semcomp/presentation/widgets/museum_view.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController();
  int pageIndex = 0;

  final pages = const [
    ListNews(),
    ListMissions(),
  ];

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
        backgroundColor: const Color(0xff2446ae),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 37,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      height: 90,
                      width: 90,
                      'assets/craque.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Lucas Claros',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'lucas.claros11@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[500],
            ),
            DrawerItem(
                icon: const Icon(
                  Icons.museum,
                  color: Colors.black,
                ),
                title: 'Museus',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MuseumView()),
                  );
                }),
            Divider(color: Colors.grey[500]),
            const DrawerItem(
              icon: Icon(
                Icons.star,
                color: Colors.black,
              ),
              title: 'Destaques',
            ),
            Divider(color: Colors.grey[500]),
            const DrawerItem(
              icon: Icon(
                Icons.sports_baseball,
                color: Colors.black,
              ),
              title: 'Esportes',
            ),
            Divider(color: Colors.grey[500]),
            const DrawerItem(
              icon: Icon(
                Icons.family_restroom_rounded,
                color: Colors.black,
              ),
              title: 'Projetos',
            ),
            Divider(color: Colors.grey[500]),
            const DrawerItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: 'Configurações',
            ),
            Divider(color: Colors.grey[500]),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  '20.475',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Sair'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (newIndex) {
          setState(() {
            pageIndex = newIndex;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (newIndex) {
          pageController.jumpToPage(newIndex);
          setState(() {
            pageIndex = newIndex;
          });
        },
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
