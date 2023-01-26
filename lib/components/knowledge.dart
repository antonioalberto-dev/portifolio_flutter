import 'package:flutter/material.dart';

import '../constants.dart';
import 'knowledge_item.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        KnowledgeItem(label: "Dart, Flutter"),
         SizedBox(height: defaultPadding / 2),
        KnowledgeItem(label: "Node"),
         SizedBox(height: defaultPadding / 2),
        KnowledgeItem(label: "React.js, React Native"),
         SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
