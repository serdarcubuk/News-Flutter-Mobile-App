import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/news_provider.dart';
import '../widgets/article_list_item.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  CategoryScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: FutureBuilder(
        future: Provider.of<NewsProvider>(context, listen: false).fetchArticles(category),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.error != null) {
            return Center(child: Text('An error occurred!'));
          } else {
            return Consumer<NewsProvider>(
              builder: (ctx, newsProvider, child) => ListView.builder(
                itemCount: newsProvider.articles.length,
                itemBuilder: (ctx, i) => ArticleListItem(article: newsProvider.articles[i]),
              ),
            );
          }
        },
      ),
    );
  }
}

/* belirli bir haber kategorisine ait makaleleri görüntüleyen bir ekran oluşturur.
Kullanıcı belirli bir kategoriye tıkladığında, CategoryScreen açılır ve bu kategoriye ait haberleri çeker. 
FutureBuilder ve Consumer widget'ları kullanılarak haberler asenkron olarak yüklenir ve kullanıcıya gösterilir. 
*/