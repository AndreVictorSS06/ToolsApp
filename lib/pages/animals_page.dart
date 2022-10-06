import 'package:flutter/material.dart';

class animalsPage extends StatelessWidget {
  const animalsPage({super.key});

  final titles = const ['Lesse Silva', 'Rabito'];
  final subtitles = const ['He is a beatiful men', 'It is my favorite '];
  final icons = const [Icons.star_border, Icons.favorite];
  final avatars = const ['assets/cat.jpg', 'assets/neymar.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My animals list'),
        ),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(avatars[index]),
              ),
              title: Center(
                child: Text(titles[index]),
              ),
              subtitle: Center(
                child: Text(subtitles[index]),
              ),
              trailing: Icon(
                icons[index],
                color: Colors.red[900],
              ),
            ),
          );
        },
      ),
    );
  }
}