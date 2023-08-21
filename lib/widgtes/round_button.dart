import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';

class RoundButton extends StatelessWidget {
  RoundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(20),
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
          size: 37,
          color: shadowGradient800,
        ),
      ),
    );
  }
}
