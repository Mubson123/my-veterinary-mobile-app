import 'package:flutter/material.dart';
import 'custom_button.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({
    Key? key,
    required this.firstRoute,
    required this.secondRoute,
    required this.firstButtonText,
    required this.secondButtonText,
  }) : super(key: key);
  final String firstButtonText;
  final String secondButtonText;
  final void Function() firstRoute;
  final void Function() secondRoute;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: firstRoute,
          textColor: Theme.of(context).focusColor,
          color: Colors.deepOrangeAccent.withOpacity(0.8),
          elevation: 3,
          height: 60,
          width: size.width / 3,
          radius: 30,
          child: Text(
            firstButtonText,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomButton(
          onPressed: secondRoute,
          textColor: Theme.of(context).focusColor,
          color: Colors.deepOrangeAccent.withOpacity(0.8),
          elevation: 3,
          height: 60,
          width: size.width / 3,
          radius: 30,
          child: Text(
            secondButtonText,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
