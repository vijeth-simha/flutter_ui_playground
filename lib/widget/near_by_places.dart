import 'package:flutter/material.dart';

class NearBuyPlaces extends StatelessWidget {
  const NearBuyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(4, (index) {
      return Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: InkWell(
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "name",
                          width: 135,
                          height: double.maxFinite,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "dscodsc",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("dscodsc"),
                      ],
                    )
                  ],
                ),
                onTap: () {},
              ),
            ),
          ));
    }));
  }
}
