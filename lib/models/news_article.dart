import 'package:http/http.dart' as http;

class NewsArticle {
  String? title;
  String? author;
  String? description;
  String? urlToImage;
  String? url;
  String? publishedAt;
  String? content;

  NewsArticle(
      {this.title,
      this.author,
      this.description,
      this.urlToImage,
      this.url,
      this.publishedAt,
      this.content});

  factory NewsArticle.createNewsArticle(Map<String, dynamic> object) {
    return NewsArticle(
      title: object['title'],
      author: object['author'],
      description: object['description'],
      urlToImage: object['urlToImage'],
      url: object['url'],
      publishedAt: object['publishedAt'],
      content: object['content'],
    );
  }
}
