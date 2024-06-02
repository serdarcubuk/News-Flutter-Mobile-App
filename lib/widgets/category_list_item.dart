import 'package:flutter/material.dart';
import '../screens/category_screen.dart';

class CategoryListItem extends StatelessWidget {
  final String category;

  CategoryListItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => CategoryScreen(category: category),
          ),
        );
      },
    );
  }
}
