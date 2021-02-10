import 'package:flutter/material.dart';

import '../theme.dart';

class CardPost extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final String textAvatar;
  final Color colorAvatar;

  CardPost({
    this.title,
    this.subtitle,
    this.trailing,
    this.textAvatar,
    this.colorAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundColor: colorAvatar,
              child: Text(
                textAvatar,
                style: TextStyle(
                  color: textWhiteColor,
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subtitle,
          ),
          trailing: Text(
            trailing,
            style: TextStyle(color: textGreyColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Divider(
            color: textBlackColor,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
