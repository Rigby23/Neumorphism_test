import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class SolidButton extends StatefulWidget {
  final Color backgroundColor;
  final double height;
  final double widht;

  const SolidButton(
      {super.key,
      required this.backgroundColor,
      required this.height,
      required this.widht});

  @override
  State<SolidButton> createState() => _SolidButtonState();
}

class _SolidButtonState extends State<SolidButton> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    double blur = isPressed ? 5.0 : 30.0;
    Offset distance = isPressed ? const Offset(10, 10) : const Offset(15, 15);
    return Listener(
      onPointerUp: (event) => setState(() {
        isPressed = false;
      }),
      onPointerDown: (event) => setState(() {
        isPressed = true;
      }),
      child: SizedBox(
        height: widget.height,
        width: widget.widht,
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.backgroundColor,
                boxShadow: [
                  ///Light Shadow
                  BoxShadow(
                      blurRadius: blur,
                      offset: isPressed ? distance : -distance,
                      color: lightShadowColor,
                      inset: isPressed),

                  ///Dark Shadow
                  BoxShadow(
                      blurRadius: blur,
                      offset: distance,
                      color: darkShadowColor,
                      inset: isPressed)
                ])),
      ),
    );
  }
}
