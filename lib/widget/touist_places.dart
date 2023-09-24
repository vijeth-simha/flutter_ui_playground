import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/models/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(touristPlaces[index].name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(right: 10));
        },
        itemCount: touristPlaces.length,
      ),
    );
  }
}
