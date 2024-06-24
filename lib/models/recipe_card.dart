import 'package:audio/models/Recipe.dart';
import 'package:audio/models/recipe_details.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final int i;
  const RecipeCard({
    super.key,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => RecipeDetails(
              label: Recipe.samples[i].label,
              imageUrl: Recipe.samples[i].imageUrl,
              recipe: Recipe.samples[i],
            ),
          ));
        },
        child: Card(
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(Recipe.samples[i].imageUrl)),
              ),
              Text(Recipe.samples[i].label)
            ],
          ),
        ),
      ),
    );
  }
}
