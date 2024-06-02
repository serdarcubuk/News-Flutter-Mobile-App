import 'package:flutter/material.dart';
import '../widgets/category_list_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: ListView(
        children: [
          CategoryListItem(category: 'Technology'),
          CategoryListItem(category: 'Sports'),
          CategoryListItem(category: 'Health'),
          CategoryListItem(category: 'Business'),
        ],
      ),
    );
  }
}
