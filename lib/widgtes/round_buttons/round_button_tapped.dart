import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class RoundButtonTapped extends StatelessWidget {
  final double size;
  const RoundButtonTapped({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: size + 5,
        width: size + 5,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: const [
              BoxShadow(
                  color: shadowGradient600,
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
                  shadowGradient500,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: shadowGradient300,
              boxShadow: [
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
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    shadowGradient700,
                    shadowGradient600,
                    shadowGradient500,
                    shadowGradient200,
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
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
