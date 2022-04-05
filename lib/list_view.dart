import 'package:flutter/material.dart';
import 'package:tugas3/circle.dart';
import 'package:tugas3/square.dart';

class MyListView extends StatelessWidget {
  final List _posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
  ];

  final List _stories = [
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //ig stories
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (context, index) {
                return MyCircle(
                  child: _stories[index],
                );
              },
            ),
          ),

          //ig posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}