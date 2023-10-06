import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/list");
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Get Started",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.chevron_right,
        ),
      ]),
    );
  }
}
