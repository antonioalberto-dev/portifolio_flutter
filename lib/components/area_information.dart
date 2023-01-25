import 'package:flutter/material.dart';

class AreaInformation extends StatelessWidget {
  const AreaInformation({
    super.key,
    required this.prefix,
    required this.sufix,
  });

  final String prefix, sufix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(prefix, style: const TextStyle(color: Colors.white)),
          Text(sufix),
        ],
      ),
    );
  }
}
