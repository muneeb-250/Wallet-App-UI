import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/screens/second_screen.dart';
import 'package:wallet_app/utils/my_button.dart';
import '../utils/my_card.dart';
// import '../utils/my_action.dart';
import '../utils/my_list_tile.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: RichText(
          text: TextSpan(
              text: 'My ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 30),
              children: [
                TextSpan(
                    text: 'Cards',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w200))
              ]),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black12,
                      blurRadius: 10.0,
                      spreadRadius: 1)
                ], shape: BoxShape.circle, color: Colors.white),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.add,
                    color: Colors.black54,
                    size: 22,
                  ),
                )),
          )
        ],
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.grey[100],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.home_rounded,
                        color: Colors.pink.shade200,
                        size: 30,
                      )),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.settings_rounded,
                        size: 30,
                      ))
                ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent.shade100,
        onPressed: null,
        // elevation: 0,
        child: const Icon(
          Icons.credit_card,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  MyCard(
                      cardNumber: 1233244,
                      balance: 3992.52,
                      expiryMonth: 12,
                      expiryYear: 24,
                      colour: Colors.deepPurpleAccent),
                  MyCard(
                      cardNumber: 43128576,
                      balance: 2999.09,
                      expiryMonth: 6,
                      expiryYear: 23,
                      colour: Colors.lightBlueAccent),
                  MyCard(
                      cardNumber: 98761234,
                      balance: 2045.00,
                      expiryMonth: 3,
                      expiryYear: 25,
                      colour: Colors.deepOrangeAccent),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // const MyActions(
                  //     text: ('Send'),
                  //     colour: Colors.deepPurpleAccent,
                  //     icon: Icons.send),
                  // const MyActions(
                  //     text: ('Pay'),
                  //     colour: Colors.lightBlueAccent,
                  //     icon: Icons.monitor_heart_rounded),
                  // MyActions(
                  //     text: ('Bills'),
                  //     colour: Colors.orange.shade300,
                  //     icon: Icons.mail_sharp),
                  GestureDetector(
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()))),
                    child: const MyButton(
                      iconPath: 'lib/icons/send.png',
                      text: 'Send',
                      iconHeight: 50,
                      iconWidth: 50,
                    ),
                  ),
                  const MyButton(
                    iconPath: 'lib/icons/pay.png',
                    text: 'Pay',
                    iconHeight: 50,
                    iconWidth: 50,
                  ),
                  const MyButton(
                    iconPath: 'lib/icons/invoice.png',
                    text: 'Bills',
                    iconHeight: 50,
                    iconWidth: 50,
                  ),
                ],
              ),
            ),
            const MyListTile(
              title: 'Statistics',
              subtitle: 'Payments and Income',
              imagePath: 'lib/icons/statistics.png',
            ),
            const MyListTile(
              title: 'Transactions',
              subtitle: 'Transaction History',
              imagePath: 'lib/icons/transaction.png',
            ),
            const MyListTile(
              title: 'To-do',
              subtitle: 'Sticky notes',
              imagePath: 'lib/icons/todo.png',
            ),
          ]),
        ),
      ),
    );
  }
}
