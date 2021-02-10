import 'package:flutter/material.dart';
import 'package:task_1/pages/create_post.dart';
import 'package:task_1/theme.dart';
import 'package:task_1/widgets/card_post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textYellowColor,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: textBlackColor,
        ),
        title: Text(
          'Your Blogs',
          style: TextStyle(color: textBlackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CardPost(
              title: 'What is Dart?',
              subtitle:
                  'Dart is a client-optimized programming language for apps on multiple \nplatform. It is developed...',
              trailing: 'Jan 26, 2021',
              colorAvatar: Colors.brown.shade800,
              textAvatar: 'W',
            ),
            CardPost(
              title: 'What is Flutter?',
              subtitle:
                  'Flutter is Google UI toolkit for building beautiful, natively compiled applications for...',
              trailing: 'Jan 26, 2021',
              colorAvatar: Colors.green.shade600,
              textAvatar: 'W',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: textYellowColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CreatePost();
              },
            ),
          );
        },
        tooltip: 'Create Post',
        child: Icon(
          Icons.add,
          color: textBlackColor,
        ),
      ),
    );
  }
}
