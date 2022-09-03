import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyActions extends StatelessWidget {
  final Color colour;
  final IconData icon;
  final String text;

  const MyActions(
      {Key? key, required this.colour, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 0),
                    blurRadius: 25.0,
                    spreadRadius: 2.0)
              ],
              borderRadius: BorderRadius.circular(25)),
          child: Icon(
            icon,
            color: colour,
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.grey.shade700,
            ),
          ),
        )
      ],
    );
  }
}
