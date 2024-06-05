import 'package:flutter/material.dart';
import '../widgets/category_list_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App', style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(16, 24, 35, 1),
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

/* Bu kod, bir haber uygulamasının ana ekranını tanımlar.
Ana ekran, üstte bir başlık çubuğu (AppBar) ve alt kısımda dört kategori öğesinden 
(Technology, Sports, Health, Business) oluşan bir liste (ListView) içerir. Her kategori öğesi,
kullanıcıya bu kategoriye ait haberleri göstermek için kullanılabilecek bir CategoryListItem widget'ı kullanılarak temsil edilir.
*/






