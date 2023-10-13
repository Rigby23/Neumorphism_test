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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: shadowGradient300,
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
        child: const Icon(
          Icons.favorite_outline_outlined,
          color: shadowGradient800,
        ),
      ),
    );
  }
}
