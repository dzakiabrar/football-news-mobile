import 'dart:convert';

NewsEntry newsEntryFromJson(String str) => NewsEntry.fromJson(json.decode(str));
String newsEntryToJson(NewsEntry data) => json.encode(data.toJson());

class NewsEntry {
  String greeting;
  List<String> instructions;

  // Field berita
  String title;
  String category;
  String content;
  bool isFeatured;
  String thumbnail;
  DateTime createdAt;
  int newsViews;

  NewsEntry({
    required this.greeting,
    required this.instructions,
    required this.title,
    required this.category,
    required this.content,
    required this.isFeatured,
    required this.thumbnail,
    required this.createdAt,
    required this.newsViews,
  });

  factory NewsEntry.fromJson(Map<String, dynamic> json) => NewsEntry(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        title: json["title"] ?? "",
        category: json["category"] ?? "",
        content: json["content"] ?? "",
        isFeatured: json["isFeatured"] ?? false,
        thumbnail: json["thumbnail"] ?? "",
        createdAt: DateTime.tryParse(json["createdAt"] ?? "") ?? DateTime.now(),
        newsViews: json["newsViews"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "title": title,
        "category": category,
        "content": content,
        "isFeatured": isFeatured,
        "thumbnail": thumbnail,
        "createdAt": createdAt.toIso8601String(),
        "newsViews": newsViews,
      };
}
