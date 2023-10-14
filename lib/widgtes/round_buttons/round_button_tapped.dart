import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class RoundButtonTapped extends StatelessWidget {
  final double height;
  final double width;
  const RoundButtonTapped({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: height + 5,
        width: width + 5,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: shadowGradient200,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 20.0,
                  spreadRadius: 5.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-1.0, -1.0),
                  blurRadius: 20.0,
                  spreadRadius: 5.0),
            ],
            gradient: const RadialGradient(
                radius: 10,
                colors: [shadowGradient200, shadowGradient200, Colors.white])),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: shadowGradient300,
              boxShadow: const [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 4.0),
                BoxShadow(
                    color: shadowGradient500,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 4.0),
              ],
            ),
            child: Center(
              child: const Text(
                "Entrar",
                style: TextStyle(
                    color: shadowGradient500,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            )),
      ),
    );
  }
}
