import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SolidButton extends StatefulWidget {
  final Color backgroundColor;
  final double height;
  final double widht;
  final Widget child;

  const SolidButton(
      {super.key,
      required this.backgroundColor,
      required this.height,
      required this.widht,
      required this.child});

  @override
  State<SolidButton> createState() => _SolidButtonState();
}

Color generateLighterColor(Color backgroundColor) {
  // Aumenta los componentes de color para obtener un tono más claro
  final r = backgroundColor.red +
      20; // Puedes ajustar el valor según tus preferencias.
  final g = backgroundColor.green +
      20; // Puedes ajustar el valor según tus preferencias.
  final b = backgroundColor.blue +
      20; // Puedes ajustar el valor según tus preferencias.
  return Color.fromARGB(backgroundColor.alpha, r, g, b);
}

Color generateDarkerColor(Color backgroundColor) {
  // Reduce los componentes de color para obtener un tono más oscuro
  final r = backgroundColor.red -
      20; // Puedes ajustar el valor según tus preferencias.
  final g = backgroundColor.green -
      20; // Puedes ajustar el valor según tus preferencias.
  final b = backgroundColor.blue -
      20; // Puedes ajustar el valor según tus preferencias.
  return Color.fromARGB(backgroundColor.alpha, r, g, b);
}

class _SolidButtonState extends State<SolidButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Color lighterColor = generateLighterColor(widget.backgroundColor);
    Color darkerColor = generateDarkerColor(widget.backgroundColor);
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
                    blurRadius: isPressed ? 0 : blur,
                    offset: isPressed ? const Offset(-2, -2) : -distance,
                    color: lighterColor,
                    inset: isPressed),

                ///Dark Shadow
                BoxShadow(
                    blurRadius: blur,
                    offset: distance,
                    color: darkerColor,
                    inset: isPressed)
              ]),
          child: widget.child,
        ),
      ),
    );
  }
}
