import 'package:flutter/material.dart';

class NormalTapped extends StatefulWidget {
  final Widget tapped;
  final Widget unTapped;
  final double size;

  const NormalTapped(
      {super.key,
      required this.size,
      required this.tapped,
      required this.unTapped});

  @override
  State<NormalTapped> createState() => _NormalTappedState();
}

class _NormalTappedState extends State<NormalTapped> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isPressed = !isPressed;
      }),
      child: isPressed ? widget.tapped : widget.unTapped,
    );
  }
}
