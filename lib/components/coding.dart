import 'package:flutter/material.dart';
import 'package:portifolio/constants.dart';

import 'coding_item.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const SizedBox(height: defaultPadding),
        // const SizedBox(height: defaultPadding / 2),
        Text(
          "Coding",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: defaultPadding / 2),
        const CodingItem(label: "Dart", value: 0.54),
        const SizedBox(height: defaultPadding / 2),
        const CodingItem(label: "Javascript", value: 0.7),
        const SizedBox(height: defaultPadding / 2),
        const CodingItem(label: "Java", value: 0.33),
        const SizedBox(height: defaultPadding / 2),
        const CodingItem(label: "CSS", value: 0.40),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
