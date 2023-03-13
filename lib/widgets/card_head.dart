import 'widget_export.dart';
import 'package:flutter/material.dart';

class CardHead extends StatelessWidget {
  const CardHead(
      {Key? key,
      required this.username,
      required this.subtitle,
      required this.status,
      required this.imageUrl,
      required this.color,
      required this.width})
      : super(key: key);
  final String username;
  final String subtitle;
  final String status;
  final String imageUrl;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleProfileImage(imageUrl: imageUrl),
          UserInfo(username: username, subtitle: subtitle, status: status),
          AboButton(
            color: color,
            width: width,
          ),
        ],
      ),
    );
  }
}
