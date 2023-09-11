import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe _recipe;
  const RecipeDetail({Key? key, required Recipe recipe})
      : _recipe = recipe,
        super(key: key);

  @override
  RecipeDetailState createState() => RecipeDetailState();

  Recipe get recipe => _recipe;
}

class RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.image),
              )),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          )
        ],
      )),
    );
  }
}
