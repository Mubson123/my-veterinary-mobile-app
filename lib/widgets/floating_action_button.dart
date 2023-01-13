import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    Key? key,
    required this.onTap,
    required this.child,
    this.backgroundColor,
    this.elevation,
    this.hoverColor,
    this.splashColor,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.border,
  }) : super(key: key);
  final Function() onTap;
  final Widget child;
  final Color? backgroundColor;
  final double? elevation;
  final Color? hoverColor;
  final Color? splashColor;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: hoverColor,
      splashColor: splashColor,
      onPressed: onTap,
      elevation: elevation,
      backgroundColor: backgroundColor,
      shape: buildShape(),
      child: child,
    );
  }

  RoundedRectangleBorder buildShape() {
    return RoundedRectangleBorder(
      side: border ?? BorderSide.none,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(bottomLeftRadius ?? 10),
        bottomRight: Radius.circular(bottomRightRadius ?? 10),
        topLeft: Radius.circular(topLeftRadius ?? 10),
        topRight: Radius.circular(topRightRadius ?? 10)
      ),
    );
  }
}
