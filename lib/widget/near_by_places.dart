import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/models/nearby_places_model.dart';
import 'package:flutter_ui_playground/widget/distance.dart';
import 'package:ionicons/ionicons.dart';

class NearBuyPlaces extends StatelessWidget {
  const NearBuyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(4, (index) {
      return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            nearbyPlaces[index].image,
                            width: 135,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sea of peace",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Text("Portic team"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Distance(),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Ionicons.star,
                                  color: Colors.yellow[700],
                                  size: 14,
                                ),
                                const Text(
                                  "4.4",
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blue),
                                        text: "\$22",
                                        children: [
                                      TextSpan(
                                          text: " /person",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54))
                                    ]))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
          ));
    }));
  }
}
