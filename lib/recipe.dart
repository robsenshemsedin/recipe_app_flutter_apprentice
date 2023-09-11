class Recipe {
  final String label;
  final String image;
  Recipe(this.label, this.image);

  static List<Recipe> samples = [
    Recipe(
      'Tomato Soup',
      'assets/RecipeTwo.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/RecipeThree.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/RecipeOne.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/RecipeFour.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/RecipeFive.jpg',
    )
  ];
}
