import 'package:flutter/material.dart';
import '../screens/category_screen.dart';

class CategoryListItem extends StatelessWidget {
  final String category;

  CategoryListItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => CategoryScreen(category: category),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0), // İçeriğe ek boşluk ekleyin
        height: 170.0, // Kutunun yüksekliğini ayarlayın
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center, // Metni ortalayın
          ),
        ),
      ),
    );
  }
}

/*Bu kod, bir haber kategorisini liste öğesi olarak gösterir ve bu öğeye tıklanabilirlik ekler. 
Kullanıcı bu öğeye tıkladığında, ilgili kategoriye ait haberlerin listelendiği CategoryScreen açılır.
*/