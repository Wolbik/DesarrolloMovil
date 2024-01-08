import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/search_field_widget.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 25,
              right: 15
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WelcomeTextWidget(),
              Container(
                child: SvgPicture.asset('assets/icons/cart.svg'),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        SearchFieldWidget(),
        BannerWidget(),
      ],
    );
  }
}




