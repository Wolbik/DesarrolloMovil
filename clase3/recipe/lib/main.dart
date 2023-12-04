import 'package:flutter/material.dart';
import 'package:recipe/recipe_detail.dart';
import 'package:recipe/recipes.dart';

void main() => runApp(Recipe());

class Recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black
        )
      ),
      title: 'Recipe Calculator',
      home: RecipeHome(title: 'Recipe App',),
    );
  }
}

class RecipeHome extends StatefulWidget {
  RecipeHome({super.key, required this.title});

  String title;

  @override
  State<RecipeHome> createState() => _RecipeHomeState();
}

class _RecipeHomeState extends State<RecipeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: Recipes.samples.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: buildRecipeCard(Recipes.samples[index]),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return RecipeDetail(recipe: Recipes.samples[index],);
                      },)
                  );
                  },
            );
            },
      ),
    );
  }

  Card buildRecipeCard(Recipes recipe) {
    return Card(
       elevation: 2.0,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(recipe.imageURL),
            SizedBox(
              height: 10,
            ),
            Text(recipe.label)
          ],
        ),
      ),
    );
  }

}

