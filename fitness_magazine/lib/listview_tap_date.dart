import 'package:flutter/widgets.dart';

class Article {
  String? url;
  String? info;
  Color? color;
  String? category;

  Article({
    required this.url,
    required this.info,
    required this.color,
     this.category,
  });
}

List<Article> nutrition = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    info: "يبل",
    color: Color(0xFfB4cf66),
    category: 'nutrition',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    info:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFfB4cf66),
    category: 'nutrition',
  ),
];

List<Article> healthy = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    info: "يبل",
    color: Color(0xFF79bde8),
    category: 'healthy',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    info:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFF79bde8),
    category: 'healthy',
  ),
];
List<Article> beauty = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    info: "يبل",
    color: Color(0xFFf05e8e),
    category: 'beauty',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    info:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFFf05e8e),
    category: 'beauty',
  ),
];
List<Article> fitness = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    info: "يبل",
    color: Color(0xFFfccd0a),
    category: 'fitness',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    info:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFFfccd0a),
    category: 'fitness',
  ),
];
