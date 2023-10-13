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
                  color: shadowGradient300,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  shadowGradient200,
                  shadowGradient300,
                  shadowGradient400,
                ],
                stops: [
                  0.85,
                  0.99,
                  1
                ])),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: shadowGradient300,
              boxShadow: const [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: shadowGradient600,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    shadowGradient500,
                    shadowGradient400,
                    shadowGradient300,
                  ],
                  stops: [
                    0.1,
                    0.7,
                    1
                  ])),
          child: const Icon(
            Icons.favorite_outline_rounded,
            color: shadowGradient700,
          ),
        ),
      ),
    );
  }
}
