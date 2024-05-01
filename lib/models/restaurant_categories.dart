class RestaurantCategories {
  final String image;
  final String name;
  final String distance;
  final String deliverytype;
  final String space;

  RestaurantCategories(
      {required this.image,
      required this.name,
      required this.distance,
      required this.deliverytype,
      required this.space});
}

List<RestaurantCategories> restaurantcategories = [
  RestaurantCategories(
      image: 'assets/beefburger.jpg',
      name: 'Jimis Burger',
      distance: '4 km',
      deliverytype: 'Free Delivery',
      space: '|'),
  RestaurantCategories(
      image: 'assets/burgerwithfries.jpg',
      name: "Good Flipin' Burgers",
      distance: '7 km',
      deliverytype: 'Free Delivery',
      space: '|'),
  RestaurantCategories(
      image: 'assets/meatburger.jpg',
      name: 'Gossip Corner',
      distance: '2 km',
      deliverytype: 'Free Delivery',
      space: '|'),
  RestaurantCategories(
      image: 'assets/cheeseburger.jpg',
      name: 'Burger World',
      distance: '6 km',
      deliverytype: 'Free Delivery',
      space: '|'),
];
