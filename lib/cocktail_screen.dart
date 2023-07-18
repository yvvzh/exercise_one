import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                "Sex on the beach",
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

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.message_outlined, "Comment"),
          _buildButtonColumn(Colors.red, Icons.share, "Share"),
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vodka\nLiqueur de pêche\nJus de cramberry\nJus d'ananas",
            softWrap: true,
          ),
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Recettes de cocktails"),
          backgroundColor: Colors.purple,
        ),
        body: ListView(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://www.1001cocktails.com/wp-content/uploads/1001cocktails/2023/03/137001_origin-1536x1024.jpg",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
              width: 600,
              height: 400,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(
          label,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color),
        )
      ],
    );
  }
}
