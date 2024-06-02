class Article {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;

  Article({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? 'https://cdn.arstechnica.net/wp-content/uploads/2018/09/GettyImages-1035243904-760x380.jpg',
      content: json['content'] ?? '',
    );
  }
}
