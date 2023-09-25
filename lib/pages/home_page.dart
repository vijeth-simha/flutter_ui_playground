import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/widget/custom_icon_button.dart';
import 'package:flutter_ui_playground/widget/location_card.dart';
import 'package:flutter_ui_playground/widget/touist_places.dart';
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
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          const LocationCard(),
          const SizedBox(
            height: 15,
          ),
          const TouristPlaces(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Reccomondation",
                  style: Theme.of(context).textTheme.headlineMedium),
              TextButton(onPressed: () {}, child: const Text("View all"))
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark_outline), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile")
          ]),
    );
  }
}
