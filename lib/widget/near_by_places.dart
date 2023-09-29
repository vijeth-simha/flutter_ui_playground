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
            child: Card(
              child: InkWell(
                child: Row(
                  children: [
                    Image.asset("name"),
                    const Column(
                      children: [Text("dscodsc")],
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
