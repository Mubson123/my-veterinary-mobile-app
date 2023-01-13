import 'package:flutter/material.dart';

class AppSpace extends StatelessWidget {
  const AppSpace({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > 500.0) {
      return SizedBox(height: height * 2,);
    }
    return SizedBox(height: height,);
  }
}
