import 'package:flutter/material.dart';
import 'package:task_1/theme.dart';
import 'package:task_1/widgets/button_form.dart';
import 'package:task_1/widgets/post_form_field.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textYellowColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: textBlackColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Create a Post',
          style: TextStyle(color: textBlackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              PostFormField(
                hintText: 'Judul Postingan',
              ),
              SizedBox(height: 20),
              PostFormField(
                hintText: 'Isi Postingan',
                maxLines: 20,
              ),
              SizedBox(height: 30),
              ButtonForm(
                text: 'Publish',
                color: textYellowColor,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
