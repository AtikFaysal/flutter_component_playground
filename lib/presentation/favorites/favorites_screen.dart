import 'package:flutter/material.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldAppbar(
      body: Center(
        child: Text('Favorites'),
      ),
    );
  }
}
