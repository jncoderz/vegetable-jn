import 'package:flutter/material.dart';
import 'package:vegitable_cart/models/model_class.dart';
import 'package:vegitable_cart/widgets/vegetable_detail_tile.dart';

class VegetableDetail extends StatelessWidget {
  final Vegetable vegetable;

  const VegetableDetail({super.key, required this.vegetable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Vegetable Detail")),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: vegetable.gradientColors),
              
            ),
            child: Image(
              image: AssetImage(vegetable.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                // title
                Text(
              vegetable.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                // headline
                Text(
              vegetable.headline,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //expansion title to show nutrition
          VegetableDtailTile(
            vegetable: vegetable,
          ),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                // description
                Text(
              vegetable.description.trim(),
              style: const TextStyle(
                // fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
