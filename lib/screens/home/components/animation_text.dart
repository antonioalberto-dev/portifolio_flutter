import 'package:flutter/material.dart';

import '../../../constants.dart';

class AnimationText extends StatelessWidget {
  const AnimationText({super.key, required this.value, required this.label});

  final int value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          TweenAnimationBuilder(
            tween: IntTween(begin: 0, end: value),
            duration: defaultDuration * 1.7,
            builder: (context, value, child) => Text(
              "$value",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: primaryColor),
            ),
          ),
          const SizedBox(width: defaultPadding / 4),
          Text(
            label,
            style:
                Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
