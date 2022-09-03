import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:wallet_app/screens/third_screen.dart';
import '../utils/my_button.dart';
import '../utils/panel.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.35;
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
      body: SlidingUpPanel(
        minHeight: height,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        panelBuilder: (controller) => MyPanel(
          controller: controller,
        ),
        body: Container(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Add your bank account',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  height: 95,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFFbce0fb)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Why to add bank account?',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              width: 200,
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Without adding your bank account, you are not able to send money.',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(
                                'data:image/png;base64,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'),
                          ),
                        )
                      ]),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: ((() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdScreen()));
                    })),
                    child: const MyButton(
                      iconPath: 'lib/icons/citibank.png',
                      text: 'Citi Bank',
                      iconHeight: 70,
                      iconWidth: 70,
                    ),
                  ),
                  const MyButton(
                    iconPath: 'lib/icons/hsbc.png',
                    text: 'HSBC Bank',
                    iconHeight: 70,
                    iconWidth: 70,
                  ),
                  MyButton(
                    iconPath: 'lib/icons/pnc.jpg',
                    text: 'PNC Bank',
                    iconHeight: 70,
                    iconWidth: 70,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
