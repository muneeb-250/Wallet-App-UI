import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_tile.dart';

class MyPanel extends StatelessWidget {
  // final Color colour;
  // final IconData icon;
  // final String text;
  final ScrollController controller;

  const MyPanel({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Select your Bank',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ),
          const MyTile(
              colour: Colors.deepPurple,
              title: 'Citi Bank',
              subtitle: '**** 1234',
              icon: Icons.bakery_dining),
          const MyTile(
              colour: Colors.pinkAccent,
              title: 'HSBC Bank',
              subtitle: '**** 4564',
              icon: Icons.food_bank),
          const MyTile(
              colour: Colors.greenAccent,
              title: 'PNC Bank',
              subtitle: '**** 4564',
              icon: Icons.food_bank),
        ],
      );
}
