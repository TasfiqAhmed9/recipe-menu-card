class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredient;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredient);

  static List<Recipe> samples = [
    Recipe('Black Coffee', 'assets/images/coffee.jpeg', 25, [
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower')
    ]),
    Recipe('Burgar', 'assets/images/burgar.jpeg', 25, [
      Ingredient(2, 'cups', 'flower'),
      Ingredient(1, 'cups', 'chicken'),
    ]),
    Recipe('Black Coffee', 'assets/images/pidza.jpeg', 25, [
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower')
    ]),
    Recipe('Black Coffee', 'assets/images/Soup.jpeg', 25, [
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower')
    ]),
    Recipe('Black Coffee', 'assets/images/steak.jpeg', 25, [
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower'),
      Ingredient(2, 'cups', 'flower')
    ]),
  ];
}
