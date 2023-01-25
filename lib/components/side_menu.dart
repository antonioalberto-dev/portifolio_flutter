import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.20,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(flex: 2),
                  const CircleAvatar(
                    radius: 35, // mudar valor
                    backgroundImage: AssetImage("assets/images/perfil.jpg"),
                  ),
                  Text(
                    "Antonio Alberto",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text("Engenheiro de Software"),
                  Text("Desenvolvedor Mobile"),
                  Spacer(flex: 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
