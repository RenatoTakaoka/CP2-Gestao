import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;

  const CustomCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: inactiveCardColour, borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}
