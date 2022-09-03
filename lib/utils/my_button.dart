import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final double iconWidth;
  final double iconHeight;

  const MyButton(
      {Key? key,
      required this.iconPath,
      required this.text,
      required this.iconHeight,
      required this.iconWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 80,
          padding: const EdgeInsets.all(10.0),
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
          child: FittedBox(
              fit: BoxFit.fill,
              child: Center(
                child:
                    Image.asset(iconPath, width: iconWidth, height: iconHeight),
              )),
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
