import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            "assets/map.png",
            width: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Your Location",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("United states")
        ],
      ),
    );
  }
}
