import 'package:flutter/material.dart';

class CircleProfileImage extends StatelessWidget {
  const CircleProfileImage({Key? key,this.radius = 40.0, required this.imageUrl}) : super(key: key);
  final double radius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: CircleAvatar(
        radius: radius - 5,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).primaryColor,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
