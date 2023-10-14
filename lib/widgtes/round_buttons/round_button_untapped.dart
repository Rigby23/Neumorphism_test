import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class RoundButtonUntapped extends StatelessWidget {
  final double height;
  final double width;
  RoundButtonUntapped({
    super.key,
    required this.height,
    required this.width,
  });
  List<Color> generateShadowGradientList(Color baseColor) {
    // Define una lista de factores de sombra y luz.
    List<double> factors = [0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4];

    // Crea una lista para almacenar los colores generados.
    List<Color> shadowGradientList = [];

    // Calcula y agrega los colores de sombra a la lista.
    for (double factor in factors.reversed) {
      final color = Color.fromARGB(
        baseColor.alpha,
        (baseColor.red * factor).round(),
        (baseColor.green * factor).round(),
        (baseColor.blue * factor).round(),
      );
      shadowGradientList.add(color);
    }

    // Agrega el color base.
    shadowGradientList.add(baseColor);

    // Calcula y agrega los colores de luz a la lista.
    for (double factor in factors) {
      final color = Color.fromARGB(
        baseColor.alpha,
        (baseColor.red + (255 - baseColor.red) * factor).round(),
        (baseColor.green + (255 - baseColor.green) * factor).round(),
        (baseColor.blue + (255 - baseColor.blue) * factor).round(),
      );
      shadowGradientList.add(color);
    }

    return shadowGradientList;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: shadowGradient200,
            boxShadow: const [
              BoxShadow(
                  color: shadowGradient400,
                  offset: Offset(0, 0),
                  blurRadius: 15.0,
                  spreadRadius: 0.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 15.0,
                  spreadRadius: 10.0),
            ],
          ),
          child: Center(
            child: const Text(
              "Entrar",
              style: TextStyle(
                  color: shadowGradient600,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
