import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Distance extends StatelessWidget {
  const Distance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Ionicons.locate_outline,
          size: 14,
          color: Colors.black54,
        ),
        const Text(
          "Accra",
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(
          width: 3,
        ),
        ...List.generate(18, (index) {
          return Expanded(
            child: Container(
              height: 2,
              color: index.isOdd ? Colors.transparent : Colors.black54,
            ),
          );
        }),
        const SizedBox(
          width: 3,
        ),
        const Icon(
          Ionicons.locate_outline,
          size: 14,
          color: Colors.blue,
        ),
        const Text(
          "kumasi",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
