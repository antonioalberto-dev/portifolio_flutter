import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text.rich(
          TextSpan(
            text: "< ",
            style: TextStyle(color: primaryColor),
          ),
        ),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyMedium!,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Sou finalista em Engenharia de Software",
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Atuo no como desenvolvedor mobile",
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Fique a vontade para conhecer meus projetos pessoais",
                speed: const Duration(milliseconds: 60),
              ),
            ],
          ),
        ),
        const Text.rich(
          TextSpan(
            text: " >",
            style: TextStyle(color: primaryColor),
          ),
        ),
      ],
    );
  }
}
