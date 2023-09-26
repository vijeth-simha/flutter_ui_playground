import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/models/recommended_places_model.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                color: Colors.white,
                elevation: 0.4,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12.0),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            Text(recommendedPlaces[index].location,
                                style: const TextStyle(fontSize: 14)),
                            const Spacer(),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow.shade700,
                            ),
                            const Text(
                              "4.4",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 14,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(recommendedPlaces[index].location,
                                style: const TextStyle(fontSize: 14)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
            );
          },
          itemCount: recommendedPlaces.length),
    );
  }
}
