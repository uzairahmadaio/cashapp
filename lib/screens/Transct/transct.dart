import 'package:cashapp/screens/themes/themes.dart';
import 'package:flutter/material.dart';

class Transct extends StatefulWidget {
  const Transct({super.key});

  @override
  State<Transct> createState() => _TransctState();
}

class _TransctState extends State<Transct> {
  String input = '0';

  void addDigit(String digit) {
    setState(() {
      if (input == '0') {
        input = digit;
      } else {
        input += digit;
      }
    });
  }

  void deleteDigit() {
    setState(() {
      if (input.length > 1) {
        input = input.substring(0, input.length - 1);
      } else {
        input = '0';
      }
    });
  }

  void submit() {
    // You can handle the submission logic here.
    print("Submitted: $input");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(Profile());
                  },
                  child: Image.asset(
                    'assets/men.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '\$$input',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Keypad buttons using GridView
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              crossAxisCount: 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 1,
              children: [
                ...['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0']
                    .map((digit) => buildButton(digit, onTap: () {
                          addDigit(digit);
                        }))
                    .toList(),
                // Delete button
                buildButton('>', onTap: submit),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(Deposit());
                  },
                  child: Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF28E8D1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Request',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(Deposit());
                  },
                  child: Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Pay',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildButton(String label, {required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
