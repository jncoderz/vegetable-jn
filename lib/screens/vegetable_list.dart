import 'package:flutter/material.dart';
import 'package:vegitable_cart/models/model_list.dart';
import 'package:vegitable_cart/screens/vegetable_detail.dart';
import 'package:vegitable_cart/widgets/vegetable_tile_widget.dart';

class VegetableList extends StatelessWidget {
  const VegetableList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetable List"),
      ),
      body: ListView(
        children: vegetables
            .map(
              (vegetable) => GestureDetector(
                child: VegetableTileWidget(vegetable: vegetable),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            VegetableDetail(vegetable: vegetable),
                      ),);
                  // Navigator.pushReplacement(context, "/detail");
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
