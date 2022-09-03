import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/my_tile.dart';
// import '../utils/my_button.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF8FAFB),
          elevation: 0.0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.grey[100],
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xFFEFF5FC), Color(0xFFF8FAFB)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    Text(
                      'Send',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Money',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, fontSize: 30),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myAccount(
                        Colors.red.shade100,
                        Icons.arrow_downward,
                        'To your \nOwn account',
                        Colors.red.shade200,
                        Colors.red.shade50),
                    const SizedBox(
                      width: 15,
                    ),
                    myAccount(
                        Colors.white,
                        Icons.arrow_upward,
                        'To other \nBank account',
                        Colors.lightBlue.shade200,
                        Colors.lightBlue.shade50),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    width: screenWidth * 0.8,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Send to your mobile contact',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  hintText: 'Enter Name or Mobile Number',
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 5.0),
                                      borderRadius: BorderRadius.circular(12)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 5.0),
                                      borderRadius: BorderRadius.circular(12)),
                                  suffixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 32,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 12))),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyTile(
                    colour: Colors.pinkAccent,
                    title: 'Charlotte',
                    subtitle: '+1 (786) 372-0978',
                    icon: Icons.contact_phone),
                const MyTile(
                    colour: Colors.greenAccent,
                    title: 'Eren Yeager',
                    subtitle: '+1 (786) 372-0978',
                    icon: Icons.contact_phone),
                const MyTile(
                    colour: Colors.yellowAccent,
                    title: 'Mikasa',
                    subtitle: '+1 (786) 372-0978',
                    icon: Icons.contact_phone),
              ],
            ),
          ),
        ));
  }
}
//Account widget

Widget myAccount(color, icon, text, iconColor, iconBackground) => Container(
      padding: const EdgeInsets.all(20),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.lightBlue.shade50,
                blurRadius: 30),
            const BoxShadow(
                offset: Offset(3, 3), color: Colors.black12, blurRadius: 10),
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 10, color: Colors.black12)
              ]),
          child: Icon(
            icon,
            color: iconColor,
            size: 50,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14),
          ),
        )
      ]),
    );
