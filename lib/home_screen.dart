import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'cocktails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final List<Cocktail> cocktails = [
    Cocktail(
        "Sex on the beach",
        "Emile",
        "https://www.1001cocktails.com/wp-content/uploads/1001cocktails/2023/03/137001_origin-1536x1024.jpg",
        "Vodka\nLiqueur de pêche\nJus de cranberry\nJus d'ananas\nGlaçons",
        false,
        50),
    Cocktail(
        "Mojito framboise",
        "Alexandre",
        "https://www.aperitissimo.fr/wp-content/uploads/2023/05/mojito-framboise.png",
        "Rhum\nJus de citron vert\nSirop de framboise\nEau gazeuse\nMenthe\nFramboises\nGlaçons",
        false,
        37),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Liste des cocktails"),
        ),
        body: ListView.builder(
          itemCount: cocktails.length,
          itemBuilder: (context, index) {
            final cocktail = cocktails[index];
            return Dismissible(
              key: Key(cocktail.name),
              onDismissed: (direction) {
                setState(() {
                  cocktails.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${cocktail.name} supprimé !")));
              },
              background: Container(color: Colors.red),
              child: CocktailItemWidget(cocktail: cocktail),
            );
          },
        ));
  }
}

class CocktailItemWidget extends StatelessWidget {
  const CocktailItemWidget({Key? key, required this.cocktail})
      : super(key: key);
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cocktail', arguments: cocktail);
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Hero(
              tag: "imageCocktail${cocktail.name}",
              child: CachedNetworkImage(
                imageUrl: cocktail.imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      cocktail.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Text(cocktail.user,
                      style: TextStyle(color: Colors.grey[500], fontSize: 16))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
