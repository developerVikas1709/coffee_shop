import 'dart:convert';

class ProductModal {
  final int id;
  final String title;
  final String description;
  final List<String> ingredients;
  final String image;

  ProductModal({
    required this.id,
    required this.title,
    required this.description,
    required this.ingredients,
    required this.image,
  });

  factory ProductModal.fromJson(Map<String, dynamic> json) {
  final rawIngredients = json['ingredients'];

  List<String> ingredientsList = [];

  if (rawIngredients is String) {
    
    try {
      ingredientsList = List<String>.from(jsonDecode(rawIngredients));
    } catch (e) {
      ingredientsList = [];
    }
  } else if (rawIngredients is List) {
    ingredientsList = List<String>.from(rawIngredients);
  }

  return ProductModal(
    id: json['id'] ?? 0,
    title: json['title'] ?? '',
    description: json['description'] ?? '',
    ingredients: ingredientsList,
    image: json['image'] ?? '',
  );
}

}
