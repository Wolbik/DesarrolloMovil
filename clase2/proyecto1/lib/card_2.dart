import 'package:flutter/cupertino.dart';
import 'package:proyecto1/social_food_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key});

  final String title = 'Recipe';
  final String description = 'Smoothies';

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
              image: AssetImage('mag5.png'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0),),
        ),
        child: Column(
          children: [
            AuthorCard(),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text(title,
                      style: SocialFoodTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(description,
                        style: SocialFoodTheme.lightTextTheme.displayLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
