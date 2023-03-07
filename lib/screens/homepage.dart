import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey, shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5295.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.deepOrange[400],
                  ),
                  MyCard(
                    balance: 6475.90,
                    cardNumber: 09812345,
                    expiryMonth: 05,
                    expiryYear: 28,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 9874.00,
                    cardNumber: 98765432,
                    expiryMonth: 08,
                    expiryYear: 29,
                    color: Colors.blueAccent[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            ///tis is
            ///where i give
            ///the dot indicator
            ///under the cards
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.black45),
            ),

            SizedBox(
              height: 40,
            ),

            // 3 buttons (send, pay, bills)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send money button

                  MyButton(
                      iconPath: 'assets/icons/send_money.png',
                      buttonText: 'send'),

                  // pay button

                  MyButton(
                      iconPath: 'assets/icons/credit_card.png',
                      buttonText: 'pay'),

                  // bills button
                  MyButton(
                      iconPath: 'assets/icons/bill.jpg', buttonText: 'Bills'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            // column of stats and transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //stats
                  MyListTile(
                    IconImagePath: 'assets/icons/pay.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'payment and income',
                  ),

                  //transaction
                  MyListTile(
                    IconImagePath: 'assets/icons/transaction.jpg',
                    tileTitle: 'transaction',
                    tileSubTitle: 'Transaction history',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
