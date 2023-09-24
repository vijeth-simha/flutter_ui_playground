import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Good Moring"),
          Text(
            'Vijeth Simha',
            style: Theme.of(context).textTheme.labelMedium,
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Ionicons.search_outline)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.notifications_outline)),
        ],
      ),
    );
  }
}
