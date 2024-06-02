import 'package:flutter/material.dart';
import '../models/article.dart';
import '../screens/article_screen.dart';

class ArticleListItem extends StatelessWidget {
  final Article article;

  ArticleListItem({required this.article});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: article.title,
        child: Image.network(
                article.urlToImage,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )
      ),
      title: Text(article.title),
      subtitle: Text(article.description),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ArticleScreen(article: article),
          ),
        );
      },
    );
  }
}

