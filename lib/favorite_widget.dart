import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavorite;
  final int favoriteCount;

  const FavoriteWidget(
      {required key, required this.isFavorite, required this.favoriteCount})
      : super(key: key);

  @override
  _FavoriteWidget createState() => _FavoriteWidget(isFavorite, favoriteCount);
}

class _FavoriteWidget extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 41;

  _FavoriteWidget(this._isFavorite, this._favoriteCount);

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount--;
      } else {
        _favoriteCount++;
      }
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: _isFavorite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
        Text('$_favoriteCount'),
      ],
    );
  }
}
