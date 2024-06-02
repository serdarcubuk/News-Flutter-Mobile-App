import 'package:flutter/material.dart';
import '../models/article.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsProvider with ChangeNotifier {
  List<Article> _articles = [];

  List<Article> get articles => _articles;

  Future<void> fetchArticles(String category) async {
    final url =
        'https://newsapi.org/v2/top-headlines?language=en&category=$category&apiKey=31de67eb1f484ca381c23c9022e72706';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final extractedData = json.decode(response.body)['articles'] as List;
        _articles = extractedData
            .where((articleData) => articleData['author'] != null)
            .map((articleData) => Article.fromJson(articleData))
            .toList();
        notifyListeners();
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (error) {
      throw error;
    }
  }
}
