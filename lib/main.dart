import 'package:exercise_one/cocktails.dart';
import 'package:flutter/material.dart';
import 'cocktail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exo - Cocktails',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CocktailScreen(
        cocktail: Cocktail(
            "Sex on the beach",
            "Emile",
            "https://www.1001cocktails.com/wp-content/uploads/1001cocktails/2023/03/137001_origin-1536x1024.jpg",
            "Vodka\nLiqueur de pêche\nJus de cranberry\nJus d'ananas",
            false,
            50),
      ),
    );
  }
}
