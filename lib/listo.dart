import 'package:flutter/material.dart';

class Listo extends StatelessWidget {
  List<String> name = [
    'Rudy',
    'Giannis',
    'Donovan',
    'LeBron',
    'James',
    'Chris',
    'Paul',
    'George',
    'Joel',
    'Luka',
    'Nikola',
    'Stauskas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          final item = name[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage:
                  NetworkImage('https://source.unsplash.com/random?sig=$index'),
            ),
            title: Text(item),
            subtitle: Text('subtitle $index'),
          );
        },
      ),
    );
  }
}