import 'package:flutter/material.dart';
import 'package:vegitable_cart/models/model_class.dart';

class VegetableDtailTile extends StatelessWidget {
  final Vegetable vegetable;

  VegetableDtailTile({super.key, required this.vegetable});

  final List<String> nutrients = [
    "Energy",
    "Sugar",
    "Fat",
    "Protein",
    "Vitamin",
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.zero,
      child: ExpansionTile(
        title: const Text("Nutrition Value per 100g"),
        children: nutrients
            .map(
              (nutrient) => Column(children: [
                const Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: Text(nutrient),
                  trailing:
                      Text(vegetable.nutrition[nutrients.indexOf(nutrient)]),
                ),
              ]),
            )
            .toList(),
      ),
    );
  }
}
