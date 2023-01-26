import 'package:flutter/material.dart';

import '../constants.dart';

class CodingItem extends StatelessWidget {
  const CodingItem({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              Text("${value * 100}%"),
            ],
          ),
          const SizedBox(height: defaultPadding / 3),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),
    );
  }
}
