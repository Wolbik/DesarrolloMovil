import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CardWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hola Mundo'),
        ),
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.0,
              backgroundImage: AssetImage('images/HomeroBien.png'),
            ),
            Text(
              'Jorge Perez',
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),

            const Text('Mobile programmer'),

            const SizedBox(
              height: 30.0,
              width: 200.0,
              child: Divider(
                height: 100.0,
                color: Colors.white,
                thickness: 2,
              ),
            ),

            const CardWidget(
              icono: Icons.email,
              texto: '1104326@est.intec.edu.do',
            ),

            const CardWidget(
              icono: Icons.phone,
              texto: '826-261-7506',
            ),
          ],
        ),
      ),
    );
  }
}