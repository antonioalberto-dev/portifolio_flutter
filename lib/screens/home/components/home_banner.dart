import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../home_screen.dart';
import 'build_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img_code.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.96),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Conheça meus projetos e minhas skills",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: defaultPadding),
                const BuildAnimatedText(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
