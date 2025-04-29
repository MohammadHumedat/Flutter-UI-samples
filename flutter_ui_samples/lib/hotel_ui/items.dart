class Items {
  final String title;
  final double price;
  final String imageurl;

  Items({required this.title, required this.price, required this.imageurl});
}

List<Items> item = [
  Items(
    imageurl: 'assets/hotel/hotel_1.png',
    price: 180,
    title: 'London',
    //isFavourite: true,
  ),
  Items(
    title: 'London',
    price: 180,
    imageurl: 'assets/hotel/hotel_2.png',
    // isFavourite: true,
  ),
  Items(
    title: 'London',
    price: 180,
    imageurl: 'assets/hotel/hotel_3.png',
    // isFavourite: true,
  ),
  Items(
    title: 'London',
    price: 180,
    imageurl: 'assets/hotel/hotel_4.png',
    // isFavourite: false,
  ),
  Items(
    title: 'London',
    price: 180,
    imageurl: 'assets/hotel/hotel_5.png',
    // isFavourite: false,
  ),
];
