import 'package:cashapp/screens/HOME/home.dart';
import 'package:cashapp/screens/themes/themes.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                // Navigation logic can go here (e.g. Get.to(TransactionPage()))
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction History',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See Activity',
                      style: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TransactionTile(
              leadingText: 'H',
              title: 'Tecclubb',
              subtitle: 'Pay',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: false, // or true
            ),
            TransactionTile(
              leadingText: 'S',
              title: 'Tecclubb',
              subtitle: 'Recive',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: true, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Pay',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: false, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Recive',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: true, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Recive',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: true, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Pay',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: false, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Recive',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: true, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Recive',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: true, // or true
            ),
            TransactionTile(
              leadingText: 'U',
              title: 'Tecclubb',
              subtitle: 'Pay',
              amount: '\$134,876',
              time: '11:00 AM',
              isReceived: false, // or true
            ),
          ],
        ),
      ),
    );
  }
}
