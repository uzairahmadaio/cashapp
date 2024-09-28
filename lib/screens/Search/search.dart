// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Discover',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField2(text1: 'Search', icon: EvaIcons.search),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pay Instantly',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Not On Cash APP',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
              Discover(text: 'Tecclubb', text1: '+923094204460', text2: 'Pay'),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1({
    super.key,
    // required this.onTap,
    required this.text,
    // required this.text1,
    // required this.icon,
  });
  final String text;
  // final String text1;

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                // letterSpacing: 0.20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          // margin: EdgeInsets.symmetric(horizontal: 23),
          height: 55,
          decoration: ShapeDecoration(
            // color: Color(0xff5E687),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  // width: 2,
                  color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Discover extends StatelessWidget {
  const Discover({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minTileHeight: 18,
          leading: Image.asset(
            'assets/b.png',
            scale: 5,
          ),
          title: Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            text1,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          trailing: Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xFF00D6BC),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                text2,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class CustomTextField2 extends StatefulWidget {
  const CustomTextField2({
    super.key,
    // required this.onTap,
    // required this.text,
    required this.text1,
    required this.icon,
  });
  // final string onTap;
  // final String text;
  final IconData icon;
  final String text1;

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width - 25,
          height: 55,
          decoration: ShapeDecoration(
            // color: Color(0xff5E687),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                EvaIcons.search,
                size: 19,
              ),
              hintText: widget.text1,
              hintStyle: TextStyle(
                // color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
