import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {Key? key,
      required this.username,
      required this.subtitle,
      required this.status})
      : super(key: key);
  final String username;
  final String subtitle;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(username),
          Text(subtitle),
          Text(status),
        ],
      ),
    );
  }
}
