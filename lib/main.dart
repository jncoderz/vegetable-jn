import 'package:flutter/material.dart';
import 'package:vegitable_cart/screens/onboarding_screen.dart';
import 'package:vegitable_cart/screens/vegetable_list.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const OnBoardingScreen(),
        // "/detail": (context) =>   VegetableDetail(vegetable: vegetable,),
        "/list": (context) => const VegetableList(),
      },
    );
  }
}
