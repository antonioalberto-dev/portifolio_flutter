import 'package:flutter/material.dart';
import 'package:portifolio/components/side_menu.dart';
import 'package:portifolio/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
