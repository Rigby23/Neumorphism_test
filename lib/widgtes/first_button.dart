import 'package:flutter/material.dart';

class FirstButton extends StatefulWidget {
  final Color backgroundColor;
  final Color lightShadow;
  final Color darkShadow;
  final double width;
  final double height;
  final double borderRadius;
  final double distance;
  final Widget child;
  final double blur;

  const FirstButton(
      {super.key,
      required this.backgroundColor,
      required this.lightShadow,
      required this.darkShadow,
      required this.width,
      required this.height,
      required this.borderRadius,
      required this.distance,
      required this.child,
      required this.blur});

  @override
  State<FirstButton> createState() => _FirstButtonState();
}

class _FirstButtonState extends State<FirstButton> {
  @override
  Widget build(BuildContext context) {
    /// background const Color(0xffefeeee)
    /// light shadow Color(0xffffffff)
    /// dark shadow Color(0xffd2d1d1)
    /// radius 43
    /// distance 16.2
    /// blur 31
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.backgroundColor,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: widget.backgroundColor,
        child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  widget.lightShadow,
                  widget.darkShadow,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: widget.lightShadow,
                  offset: Offset(-widget.distance, -widget.distance),
                  blurRadius: widget.blur,
                  spreadRadius: 0.0,
                ),
                BoxShadow(
                  color: widget.darkShadow,
                  offset: Offset(widget.distance, widget.distance),
                  blurRadius: widget.blur,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: widget.child),
      ),
    );
  }
}
