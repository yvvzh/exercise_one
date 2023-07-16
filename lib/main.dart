import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(8),
    child: Row(children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              "Pizzas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Text(
            "By Emile",
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
          )
        ],
      )),
      const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      const Text("55"),
    ]),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratique',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Mes recettes"),
            backgroundColor: Colors.amber,
          ),
          body: Column(
            children: [titleSection],
          )),
    );
  }
}
