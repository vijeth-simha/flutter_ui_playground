import 'package:flutter/material.dart';

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
                            "assets/places/place1.jpg",
                            width: double.maxFinite,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            const Text("Jayanagar",
                                style: TextStyle(fontSize: 14)),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow.shade700,
                            ),
                            const Text(
                              "4.4",
                              style: TextStyle(fontSize: 12),
                            )
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
          itemCount: 8),
    );
  }
}
