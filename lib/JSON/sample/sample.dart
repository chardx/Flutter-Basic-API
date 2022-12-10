class Sample {
  String? title;
  String? description;
  String? link;
  String? source;
  String? image;
  DateTime? pubDate;

  Sample({
    this.title,
    this.description,
    this.link,
    this.source,
    this.image,
    this.pubDate,
  });

  @override
  String toString() {
    return 'Sample(title: $title, description: $description, link: $link, source: $source, image: $image, pubDate: $pubDate)';
  }

  factory Sample.fromJson(Map<String, dynamic> json) => Sample(
        title: json['title'] as String?,
        description: json['description'] as String?,
        link: json['link'] as String?,
        source: json['source'] as String?,
        image: json['image'] as String?,
        pubDate: json['pubDate'] == null
            ? null
            : DateTime.parse(json['pubDate'] as String),
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'link': link,
        'source': source,
        'image': image,
        'pubDate': pubDate?.toIso8601String(),
      };
}
