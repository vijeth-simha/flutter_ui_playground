import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!), shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        splashRadius: 22,
        constraints: const BoxConstraints.tightFor(width: 40),
      ),
    );
  }
}
