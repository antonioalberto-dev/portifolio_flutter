import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class KnowledgeItem extends StatelessWidget {
  const KnowledgeItem({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        const SizedBox(width: defaultPadding / 2),
        Text(label)
      ],
    );
  }
}
