import 'package:hive/hive.dart';
part 'article_mdel.g.dart';

@HiveType(typeId: 1)
class ArticleModel extends HiveObject {
  @HiveField(0)
  final String? author;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? url;
  @HiveField(4)
  final String? urlToImage;
  @HiveField(5)
  final String? publishedAt;
  @HiveField(6)
  final String? content;
  @HiveField(7)
bool? faverot;
  ArticleModel({
    this.faverot = false,
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
      author: json['author'] ?? 'Unknown',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'],
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }
}
