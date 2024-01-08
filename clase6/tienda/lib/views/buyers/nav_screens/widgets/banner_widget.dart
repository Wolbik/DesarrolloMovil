import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow.shade900,
        borderRadius: BorderRadius.circular(10)
      ),
      child: PageView(
        children: [
          Center(
            child: Text('Hola 1'),
          ),
          Center(
            child: Text('Hola 2'),
          ),
          Center(
            child: Text('Hola 3'),
          ),
        ],
      ),
    );
  }
}
