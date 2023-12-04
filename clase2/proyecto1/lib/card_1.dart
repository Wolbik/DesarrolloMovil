import 'package:flutter/cupertino.dart';
import 'package:proyecto1/social_food_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  //atributos de la clase
  final String category = 'Eleccion del editor';
  final String title = 'El arte de Dough';
  final String description = 'Como hacer el pan perfecto';
  final String chef = 'Jorge Perez';
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 350
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('mag1.png'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0),),
        ),
        child: Stack(
          children: [
            Text(category,
              style: SocialFoodTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              top: 20,
              child: Text(title,
                style: SocialFoodTheme.darkTextTheme.displayLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(chef,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
