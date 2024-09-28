// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cashapp/screens/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 236, 236),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Account',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.close)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.white,
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Barcode placeholder
                          Image.asset(
                            'assets/barcode.png',
                            scale: 4,
                          ),
                          // Profile image and name
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.red,
                            child: Text('D',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          Icon(Icons.upload_outlined),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Dolly',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('@Dollysheep'),
                      SizedBox(height: 8),
                      Container(
                        width: 250,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 206, 205, 205)),
                        child: Center(
                            child: Text('Edit Profile',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black))),
                      ),
                      Divider(),
                      ListTile(
                        leading: Image.asset(
                          'assets/caamera.png',
                          scale: 4,
                        ),
                        title: Text('Add a Profile Photo'),
                        subtitle: Text('Help People find you'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: ListTile(
                    minTileHeight: 18,
                    leading: CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Invite Friend',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      'Get 5\$',
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      title: 'Invite Friend',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),
                    // Add more instances as needed

                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      title: 'Favorites',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),
                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.link,
                        color: Colors.white,
                      ),
                      title: 'Linked Bank',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),
                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.outbound,
                        color: Colors.white,
                      ),
                      title: 'Limits',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),
                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.support_agent,
                        color: Colors.white,
                      ),
                      title: 'Support',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),

                    CustomListTile(
                      leadingIcon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      title: 'Notification',
                      trailingIcon: Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '+93094204460',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Add Phone or Email',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Email: Tecclubb@gmail.com',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Pakistan',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Icon leadingIcon;
  final String title;

  final Icon trailingIcon;

  const CustomListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 18,
      leading: CircleAvatar(
        backgroundColor: kPrimaryColor, // Example color
        child: leadingIcon,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      trailing: trailingIcon,
    );
  }
}
