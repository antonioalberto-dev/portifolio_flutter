import 'package:flutter/material.dart';
import 'package:portifolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Container(
        color: darkColor,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 35, // mudar valor
              backgroundImage: AssetImage("assets/images/perfil.jpg"),
            ),
            Text(
              "Antonio Alberto",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text("Engenheiro de Software"),
            const Text("Desenvolvedor Mobile"),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
