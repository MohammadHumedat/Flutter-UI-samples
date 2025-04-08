class Items {
  final String title;
  final double price;
  final imageurl;

  Items({required this.title, required this.price, required this.imageurl});
}

List<Items> item = [
  Items(
    imageurl: 'assets/hotel/hotel_1.png',
    price: 8.5,
    title: 'Mauresque',
    //isFavourite: true,
  ),
  Items(
    title: 'Cocktail Horses Neck',
    price: 12,
    imageurl: 'assets/hotel/hotel_2.png',
    // isFavourite: true,
  ),
  Items(
    title: 'Ramos Gin Fizz',
    price: 7.0,
    imageurl: 'assets/hotel/hotel_3.png',
    // isFavourite: true,
  ),
  Items(
    title: 'Gin Lemon',
    price: 5.0,
    imageurl: 'assets/hotel/hotel_4.png',
    // isFavourite: false,
  ),
  Items(
    title: 'Thai Coffee',
    price: 7.0,
    imageurl: 'assets/hotel/hotel_5.png',
    // isFavourite: false,
  ),
];
