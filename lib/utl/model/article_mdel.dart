class ArticleModel {
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      author: json['author']??'Unknown',
      title: json['title']??'',
      description: json['description']??'',
      url: json['url'],
      urlToImage: json['urlToImage']??'',
      publishedAt: json['publishedAt']??'',
      content: json['content']??'',
    );
  }
}
