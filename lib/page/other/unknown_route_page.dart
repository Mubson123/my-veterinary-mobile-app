import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(
        'There is a problem somewhere',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),),
    );
  }
}