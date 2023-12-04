import 'package:flutter/material.dart';
import 'package:proyecto1/social_food_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
            width: 350,
            height: 350
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0),),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),)
              ),

            ),
            Positioned(
                top: 10,
                left: 10,
                child:
                Icon(
                    Icons.book,
                    size: 50,
                )
            ),
            Positioned(
                top: 60,
                left: 10,
                child:
                Text(
                    'Recipe Trends',
                    style: SocialFoodTheme.darkTextTheme.displayLarge,
                )
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 10,
                runSpacing: 10,
                children: [
                  Chip(
                      label: Text('Healthy'),
                      onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Vegan'),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Carrots'),
                  ),
                  Chip(
                    label: Text('Carrots'),
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
