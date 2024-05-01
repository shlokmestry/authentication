class FoodCategories {
  final String image;
  final String name;

  FoodCategories({
    required this.image,
    required this.name,
  });
}

List<FoodCategories> foodcategories = [
  FoodCategories(image: 'assets/burger.png', name: 'Burger'),
  FoodCategories(image: 'assets/cake.png', name: 'Cake'),
  FoodCategories(image: 'assets/coffee.png', name: 'Coffee'),
  FoodCategories(image: 'assets/croissant.png', name: 'Croissant'),
  FoodCategories(image: 'assets/doughnut.png', name: 'Doughnut'),
  FoodCategories(image: 'assets/friedchicken.png', name: 'Fried Chicken'),
  FoodCategories(image: 'assets/fries.png', name: 'Fries'),
  FoodCategories(image: 'assets/hotdog.png', name: 'Hotdog'),
  FoodCategories(image: 'assets/icecream.png', name: 'Icecream'),
  FoodCategories(image: 'assets/noodles.png', name: 'Noodles'),
  FoodCategories(image: 'assets/pizza.png', name: 'Pizza'),
  FoodCategories(image: 'assets/samosa.png', name: 'Samosa'),
  FoodCategories(image: 'assets/taco.png', name: 'Taco'),
  FoodCategories(image: 'assets/wrap.png', name: 'Wrap')
];
