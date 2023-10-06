import 'package:flutter/material.dart';
import 'package:vegitable_cart/models/model_class.dart';

class VegetableTileWidget extends StatelessWidget {
  final Vegetable vegetable;
  const VegetableTileWidget({super.key, required this.vegetable});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: const EdgeInsets.all(6),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              blurRadius: 3,
              offset: Offset(3, 3),
            ),
          ],
          gradient: LinearGradient(
            colors: vegetable.gradientColors,
          ),
        ),
        child: Image(image: AssetImage(vegetable.image)),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vegetable.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            vegetable.subtitle,
          ),
        ],
      )
    ]);
  }
}
