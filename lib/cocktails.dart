import 'package:flutter/material.dart';

class Cocktail {
  String name;
  String user;
  String imageUrl;
  String desc;
  bool isFavorite;
  int favoriteCount;

  Cocktail(this.name, this.user, this.imageUrl, this.desc, this.isFavorite,
      this.favoriteCount);
}
