import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator.',
      theme: themeData.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  MyHomePage get widgetGetter => MyHomePage(title: title);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Text('Detail page');
                      }));
                    },
                    child: recipeCard(Recipe.samples[index]));
              })),
    );
  }

  Widget recipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.image)),
          const SizedBox(
            height: 15,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'),
          )
        ],
      ),
    );
  }
}
