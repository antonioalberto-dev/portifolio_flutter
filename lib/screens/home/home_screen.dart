import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/constants.dart';
import 'package:portifolio/screens/main_screen.dart';

import 'components/animation_text.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        const HomeBanner(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimationText(label: "Projetos", value: 20),
            AnimationText(label: "Tecnologias", value: 8),
            AnimationText(label: "Tempo de mercado", value: 1),
          ],
        )
      ],
    );
  }
}
