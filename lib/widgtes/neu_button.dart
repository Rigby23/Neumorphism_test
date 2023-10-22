import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeuButton extends StatefulWidget {
  final Color backgroundColor;
  final double height;
  final double width;
  final String label;

  const NeuButton(
      {super.key,
      required this.backgroundColor,
      required this.height,
      required this.width,
      required this.label});

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

///Illumination Factor (0.0 for no change, 1.0 for full white)
Color illuminateColor(Color backgroundColor, double factor) {
  int red =
      (backgroundColor.red + (255 - backgroundColor.red) * factor).round();
  int green =
      (backgroundColor.green + (255 - backgroundColor.green) * factor).round();
  int blue =
      (backgroundColor.blue + (255 - backgroundColor.blue) * factor).round();

  return Color.fromARGB(backgroundColor.alpha, red, green, blue);
}

///Illumination Factor (0.0 for no change, 1.0 for full black)
Color createShadowColor(Color backgroundColor, double shadowFactor) {
  int red = (backgroundColor.red * (1 - shadowFactor)).round();
  int green = (backgroundColor.green * (1 - shadowFactor)).round();
  int blue = (backgroundColor.blue * (1 - shadowFactor)).round();

  return Color.fromARGB(backgroundColor.alpha, red, green, blue);
}

class _NeuButtonState extends State<NeuButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color lighterColor = illuminateColor(widget.backgroundColor, 0.05);
    Color darkerColor = createShadowColor(widget.backgroundColor, 0.5);
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
        width: widget.width,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.backgroundColor.withOpacity(0.7),
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
          child: Center(
              child: Text(widget.label,
                  style: isPressed
                      ? TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)
                      : const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)
                  // style: isPressed ? Theme.of(context).textTheme.labelMedium : Theme.of(context).textTheme.labelLarge,
                  )),
        ),
      ),
    );
  }
}
