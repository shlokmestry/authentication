class onboardingContent{
  final String image;
  final String title;
  final String description;


  onboardingContent({
    required this.image,
    required this.title,
    required this.description
  });
}

List<onboardingContent> contents = [
  onboardingContent(
    image: 'assets/food_on_mind.jpg', 
    title: 'Discover the best recipes', 
    description: '5000+ healthy recipes made by people \n                 for your healthy life.'),

    onboardingContent(
      image: 'assets/eating_food.jpg', 
      title: 'Browse your menu', 
      description: "We'll deliver food to your home from \n        your favourite restaurant."),

      onboardingContent(
        image: 'assets/eating_food2.jpg', 
        title: 'Bon appetite!', 
        description: 'Enjoy tasty and hot food, we try to be \n                 better for you.')
];