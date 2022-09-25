import 'package:flutter/material.dart';
import 'package:hackathon_semcomp/data/helpers.dart';
import 'package:hackathon_semcomp/presentation/widgets/list_news_item.dart';

class ListNews extends StatefulWidget {
  const ListNews({
    Key? key,
  }) : super(key: key);

  @override
  State<ListNews> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews>
    with AutomaticKeepAliveClientMixin<ListNews> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.blue[300],
          title: const Text(
            'Bem vindo de volta {usuário}!',
            style: TextStyle(color: Colors.white),
          ),
          content: const Text(
            'Fique por dentro das notícias do mundo do {esporte} enquanto esteve fora.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff112776))),
              child: const Text(
                'Bora torcer! 👍',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListNewsItem(
          newsModel: news[index],
        );
      },
      itemCount: news.length,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
