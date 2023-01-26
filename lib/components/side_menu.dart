import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portifolio/components/my_info.dart';
import 'package:portifolio/constants.dart';

import 'area_information.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'skills_item.dart';

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
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AreaInformation(
                    prefix: "Cidade",
                    sufix: "Coari",
                  ),
                  const AreaInformation(
                    prefix: "Residencia",
                    sufix: "Itacoatiara",
                  ),
                  const AreaInformation(
                    prefix: "Idade",
                    sufix: "23",
                  ),
                  const Divider(),
                  const SizedBox(height: defaultPadding),
                  Text(
                    "Skills",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: const [
                      Expanded(
                        child: SkillsItem(label: "Flutter", percent: 0.67),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        child: SkillsItem(label: "React", percent: 0.24),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        child: SkillsItem(label: "Node", percent: 0.20),
                      ),
                      SizedBox(width: defaultPadding),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  const Coding(),
                  const Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Knowledge",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Knowledge(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
