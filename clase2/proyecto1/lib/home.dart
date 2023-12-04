import 'package:flutter/material.dart';
import 'package:proyecto1/card_1.dart';
import 'package:proyecto1/card_2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Controlar el tab actual
  int selectedIndex = 0;

  List<Widget> pages = [
    Card1(),
    Card2(),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    //Metodo para cambiar el indice del tab
    void selectedIndexChanged(int index){
      setState(() {
        selectedIndex = index;
      });
    }


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Social Food',
        style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedIndexChanged,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card 3'
          ),
        ],
      ),
    );
  }
}