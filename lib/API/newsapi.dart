import 'dart:convert';
import 'package:http/http.dart' as http;

Future getNewsData() async {
  var uri = Uri.https('philippine-news.p.rapidapi.com', 'latest');

  final response = await http.get(uri, headers: {
    "X-RapidAPI-Key": "6f09c0c5f9mshb7f1a3741863dfap13e355jsnb4176fcfbcc0",
    "X-RapidAPI-Host": "philippine-news.p.rapidapi.com",
    "useQueryString": "true",
  });
  var jsonData = jsonDecode(response.body);

  List<News> latestnews = [];

  for (var u in jsonData) {
    News news = News(u["title"], u["description"], u["image"], u["pubDate"]);
    latestnews.add(news);
  }
  print(latestnews.length);
  return latestnews;
}

class News {
  final String title, description, image, pubDate;

  News(this.title, this.description, this.image, this.pubDate);
}
