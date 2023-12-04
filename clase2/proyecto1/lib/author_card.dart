import 'package:flutter/material.dart';
import 'package:proyecto1/social_food_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({Key? key}) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  final String name = 'Mike Katz';
  final String description = 'Smoothie Connoisseur';
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('author_katz.jpeg'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                    style: SocialFoodTheme.lightTextTheme.displayMedium,
                    ),
                    Text(description,
                    style: SocialFoodTheme.lightTextTheme.bodyLarge,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        // Cambiar el estado de favorito al presionar el botón
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: isFavorite
                        ? Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ) // Si es favorito, muestra el corazón lleno
                        : Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ), // Si no es favorito, muestra el corazón vacío
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}