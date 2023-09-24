import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/widget/custom_icon_button.dart';
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
        actions: const [
          CustomIconButton(icon: Icon(Ionicons.search_outline)),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12.0),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          )
        ],
      ),
    );
  }
}
