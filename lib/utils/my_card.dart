import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  final double balance;
  final int expiryMonth;
  final int expiryYear;
  final int cardNumber;

  const MyCard(
      {Key? key,
      required this.cardNumber,
      required this.balance,
      required this.expiryMonth,
      required this.expiryYear,
      required this.colour})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(25.0)),
        height: 150,
        width: 220,
        child: Stack(children: [
          // Balance Title
          Positioned(
            top: 15,
            right: 25,
            child: Text(
              'VISA',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(190, 255, 255, 255),
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Positioned(
              top: 40,
              left: 25,
              child: Text(
                'Balance',
                style: TextStyle(color: Colors.white),
              )),
          //Amount
          Positioned(
              top: 68,
              left: 25,
              child: Text(
                '\$$balance',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 35),
              )),
          Positioned(
            bottom: 15,
            left: 25,
            child: Text(
              cardNumber.toString(),
              style: TextStyle(color: Colors.grey[100]),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 25,
            child: Text(
              '$expiryMonth/$expiryYear',
              style: TextStyle(color: Colors.grey[100]),
            ),
          )
        ]),
      ),
    );
  }
}
