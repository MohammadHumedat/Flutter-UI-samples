import 'package:flutter/widgets.dart';

class Article {
  String? url;
  String? title;
  String? content;
  Color? color;
  String? category;

  Article({
    required this.url,
    required this.content,
    required this.color,
    this.category,
    this.title,
  });
}

List<Article> mainSectionArticles = [
  Article(
    url:
        'https://media.istockphoto.com/id/1433432507/photo/healthy-eating-plate-with-vegan-or-vegetarian-food-in-woman-hands-healthy-plant-based-diet.webp?a=1&b=1&s=612x612&w=0&k=20&c=ZpQFw7PDna9cCLKkrVxyGQPqlc1Hy-ZWMoweYf4j8mU=',
    content:
        "زيت الافكادو وفوائده الكبيرة على الجسم ",
    color: Color(0xFfB4cf66),
    category: 'تغذية',
    title: "إالبك 10 فوائد لزيت الافوكادو",
  ),
  Article(
    url:
        'https://images.unsplash.com/photo-1485527172732-c00ba1bf8929?q=80&w=2488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFF79bde8),
    category: 'صحة',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFFf05e8e),
    category: 'جمال',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url:
        'https://images.unsplash.com/photo-1483721310020-03333e577078?q=80&w=2428&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    content:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFFfccd0a),
    category: 'لياقة',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
];

List<Article> nutrition = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFfB4cf66),
    category: 'nutrition',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    content:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFfB4cf66),
    category: 'nutrition',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
];

List<Article> healthy = [
  Article(
    url:
        'https://images.unsplash.com/photo-1485527172732-c00ba1bf8929?q=80&w=2488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFF79bde8),
    category: 'healthy',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    content:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFF79bde8),
    category: 'healthy',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
];
List<Article> beauty = [
  Article(
    url:
        'https://plus.unsplash.com/premium_photo-1683121409041-076759249d56?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFFf05e8e),
    category: 'beauty',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV2Fz0GPtsuSFi3_pxyL5NpTaZ2kaPKdy_A&s',
    content:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFFf05e8e),
    category: 'beauty',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
];
List<Article> fitness = [
  Article(
    url: 'https://ibsacademy.org/U/a/sports-nutrition.jpg',
    content:
        "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنز",
    color: Color(0xFFfccd0a),
    category: 'fitness',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
  Article(
    url:
        'https://images.unsplash.com/photo-1483721310020-03333e577078?q=80&w=2428&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    content:
        ' ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في  المنزل',
    color: Color(0xFFfccd0a),
    category: 'fitness',
    title: 'تمارين الكارديو وحدها لا تساعد على بناء العضلات',
  ),
];
