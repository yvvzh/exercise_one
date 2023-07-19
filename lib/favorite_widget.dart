import 'package:exercise_one/favorite_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Icon Favorite
class FavoriteIconWidget extends StatefulWidget {
  const FavoriteIconWidget({super.key});

  @override
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  late bool _isFavorite;

  void _toggleFavorite(FavoriteChangeNotifier notifier) {
    setState(() {
      _isFavorite = !_isFavorite;

      notifier.isFavorite = _isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    FavoriteChangeNotifier notifier =
        Provider.of<FavoriteChangeNotifier>(context);
    _isFavorite = notifier.isFavorite;
    return IconButton(
      icon: _isFavorite
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
      color: Colors.red,
      onPressed: () => _toggleFavorite(notifier),
    );
  }
}

// Text Favorite
class FavoriteTextWidget extends StatefulWidget {
  const FavoriteTextWidget({super.key});

  @override
  _FavoriteTextWidgetState createState() => _FavoriteTextWidgetState();
}

class _FavoriteTextWidgetState extends State<FavoriteTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteChangeNotifier>(
        builder: (context, notifier, _) =>
            Text(notifier.favoriteCount.toString()));
  }
}
