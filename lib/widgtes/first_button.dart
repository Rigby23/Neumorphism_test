import 'package:flutter/material.dart';

class FirstButton extends StatefulWidget {
  const FirstButton({super.key});

  @override
  State<FirstButton> createState() => _FirstButtonState();
}

class _FirstButtonState extends State<FirstButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      color: const Color(0xffefeeee),
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: const Color(0xffefeeee),
        child: Container(
          width: 178,
          height: 178,
          decoration: BoxDecoration(
            color: const Color(0xffefeeee),
            borderRadius: BorderRadius.circular(43),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffffffff),
                Color(0xffd2d1d1),
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffffffff),
                offset: Offset(-16.2, -16.2),
                blurRadius: 31,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xffd2d1d1),
                offset: Offset(16.2, 16.2),
                blurRadius: 31,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: const Icon(
            Icons.access_time_outlined,
            size: 59,
            color: Color(0xffd2d1d1),
          ),
        ),
      ),
    );
  }
}
