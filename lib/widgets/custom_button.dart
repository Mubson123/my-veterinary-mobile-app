import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.textTheme,
    required this.textColor,
    this.disabledTextColor,
    required this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    required this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.focusNode,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    required this.height,
    required this.child,
    required this.width,
    required this.radius,
  }) : super(key: key);

  final Function() onPressed;
  final Function()? onLongPress;
  final Function(bool)? onHighlightChanged;
  final MouseCursor? mouseCursor;
  final ButtonTextTheme? textTheme;
  final Color textColor;
  final Color? disabledTextColor;
  final Color color;
  final Color? disabledColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Brightness? colorBrightness;
  final double elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final EdgeInsetsGeometry? padding;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final FocusNode? focusNode;
  final bool autofocus = false;
  final MaterialTapTargetSize? materialTapTargetSize;
  final Duration? animationDuration;
  final double? minWidth;
  final double height;
  final bool enableFeedback = true;
  final Widget child;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      color: color,
      height: height,
      minWidth: width,
      disabledColor: disabledColor,
      disabledElevation: disabledElevation,
      disabledTextColor: disabledTextColor,
      enableFeedback: enableFeedback,
      clipBehavior: Clip.antiAlias,
      focusColor: focusColor,
      focusElevation: focusElevation,
      focusNode: focusNode,
      onHighlightChanged: onHighlightChanged,
      textColor: textColor,
      textTheme: textTheme,
      padding: padding,
      animationDuration: animationDuration,
      autofocus: autofocus,
      splashColor: splashColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      highlightElevation: highlightElevation,
      hoverElevation: hoverElevation,
      materialTapTargetSize: materialTapTargetSize,
      mouseCursor: mouseCursor,
      colorBrightness: colorBrightness,
      visualDensity: visualDensity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
    );
  }
}
