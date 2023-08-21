import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class RoundButtonUntapped extends StatelessWidget {
  final double size;
  RoundButtonUntapped({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: shadowGradient300,
            boxShadow: [
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
            gradient: LinearGradient(
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
        child: const Icon(
          Icons.favorite_outline_outlined,
          color: shadowGradient800,
        ),
      ),
    );
  }
}
