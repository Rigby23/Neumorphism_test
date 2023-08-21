import 'package:flutter/material.dart';

class TappedListener extends StatefulWidget {
  final Widget tapped;
  final Widget unTapped;
  const TappedListener({
    super.key,
    required this.tapped,
    required this.unTapped,
  });

  @override
  State<TappedListener> createState() => _TappedListenerState();
}

class _TappedListenerState extends State<TappedListener> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerUp: (event) => setState(() {
              isPressed = false;
            }),
        onPointerDown: (event) => setState(() {
              isPressed = true;
            }),
        child: isPressed ? widget.tapped : widget.unTapped);
  }
}
