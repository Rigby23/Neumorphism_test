import 'package:flutter/material.dart';
import 'package:neumorphism_test/widgtes/round_buttons/round_button_untapped.dart';

class BottomBar extends StatefulWidget {
  final List<int> icons;
  const BottomBar({super.key, required this.icons});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...widget.icons.map((icon) => Expanded(
                  child: RoundButtonUntapped(
                size: 50,
              )))
        ],
      ),
    );
  }
}
