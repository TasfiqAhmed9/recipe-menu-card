import 'package:audio/models/Recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetails extends StatefulWidget {
  final String label;
  final String imageUrl;
  final Recipe recipe;
  const RecipeDetails(
      {super.key,
      required this.label,
      required this.imageUrl,
      required this.recipe});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'data',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.imageUrl),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredient.length,
                itemBuilder: (ctx, i) {
                  final ingredient = widget.recipe.ingredient[i];
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 1,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              value: _sliderVal.toDouble(),
              onChanged: (val) {
                setState(() {
                  _sliderVal = val.toInt();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
