import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleScreen extends StatelessWidget {
  final Article article;

  ArticleScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage.isNotEmpty)
              Hero(
                tag: article.title,
                child: Image.network(article.urlToImage),
              ),
            SizedBox(height: 16),
            Text(
              article.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(article.description),
            SizedBox(height: 16),
            Text(article.content),
          ],
        ),
      ),
    );
  }
}

/* bir haber makalesinin detaylarını (başlık, açıklama, içerik ve varsa bir görüntü) gösteren bir ekran oluşturur. 
Kullanıcı bir makale seçtiğinde, ArticleScreen açılır ve seçilen makale ile ilgili bilgileri kullanıcıya gösterir.
*/
