import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key, required this.icono, required this.texto,
  });

  final IconData icono;
  final String texto;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            icono,
            color: Colors.teal.shade900,
          ),
          title: Text(texto,
            style: GoogleFonts.roboto(
                color: Colors.teal.shade700
            ),),

        ),
      ),
    );
  }
}